#!/usr/bin/env bash
# Consolidates all pipeline phase outputs into a single archived final deliverable.
set -euo pipefail

RUN_ID="${1:-manual}"
TIMESTAMP="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
FINAL_DIR="outputs/final"
ARCHIVE_FILE="${FINAL_DIR}/pipeline-result-${RUN_ID}.md"
LATEST_FILE="${FINAL_DIR}/latest.md"

mkdir -p "${FINAL_DIR}"

{
  echo "# MT5 Algorithmic Research Pipeline — Final Output"
  echo ""
  echo "- **Run ID:** ${RUN_ID}"
  echo "- **Completed:** ${TIMESTAMP}"
  echo "- **Repository:** ${GITHUB_REPOSITORY:-local}"
  echo ""
  echo "---"
  echo ""

  for phase in 01-researcher 02-analyst 03-strategy-designer 04-mt5-engineer; do
    file="outputs/${phase}.md"
    echo "## Phase: ${phase}"
    echo ""
    if [[ -f "${file}" ]]; then
      cat "${file}"
    else
      echo "_Output not found: ${file}_"
    fi
    echo ""
    echo "---"
    echo ""
  done

  echo "## Generated Expert Advisors"
  echo ""
  if compgen -G "Experts/*.mq5" > /dev/null || compgen -G "**/*.mq5" > /dev/null; then
    find . -name "*.mq5" -not -path "./.git/*" 2>/dev/null | sort | while read -r mq5; do
      echo "- \`${mq5#./}\`"
    done
  else
    echo "_No .mq5 files found in this run._"
  fi
} > "${ARCHIVE_FILE}"

cp "${ARCHIVE_FILE}" "${LATEST_FILE}"

# Update pipeline state
if command -v jq >/dev/null 2>&1; then
  tmp="$(mktemp)"
  jq \
    --arg run_id "${RUN_ID}" \
    --arg ts "${TIMESTAMP}" \
    --arg final "${LATEST_FILE}" \
    '.status = "completed"
     | .current_phase = "done"
     | .last_run_id = $run_id
     | .last_completed_at = $ts
     | .last_final_output = $final
     | .runs += [{id: $run_id, completed_at: $ts, final_output: $final}]' \
    pipeline/state.json > "${tmp}"
  mv "${tmp}" pipeline/state.json
fi

echo "Final output written to ${LATEST_FILE}"
echo "Archive copy: ${ARCHIVE_FILE}"
