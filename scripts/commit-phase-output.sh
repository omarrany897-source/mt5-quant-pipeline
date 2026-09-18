#!/usr/bin/env bash
# Commits a phase output file and advances pipeline state.
set -euo pipefail

OUTPUT_FILE="$1"
NEXT_PHASE="$2"
RUN_ID="$3"
EXTRA_PATHS="${4:-}"

if [[ ! -s "$OUTPUT_FILE" ]]; then
  echo "ERROR: Missing required output file: $OUTPUT_FILE"
  exit 1
fi

git config user.name "gemini-cli[bot]"
git config user.email "gemini-cli[bot]@users.noreply.github.com"

git add "$OUTPUT_FILE" pipeline/state.json
if [[ -n "$EXTRA_PATHS" ]]; then
  # shellcheck disable=SC2086
  git add $EXTRA_PATHS 2>/dev/null || true
fi

jq --arg phase "$NEXT_PHASE" '.current_phase = $phase' pipeline/state.json > /tmp/state.json
mv /tmp/state.json pipeline/state.json
git add pipeline/state.json

git commit -m "feat(pipeline): $(basename "$OUTPUT_FILE" .md) [run ${RUN_ID}]" || echo "Nothing new to commit"
git push
