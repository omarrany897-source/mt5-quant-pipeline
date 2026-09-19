#!/usr/bin/env bash
# Commits a phase output file and advances pipeline state.
set -euo pipefail

OUTPUT_FILE="$1"
NEXT_PHASE="$2"
RUN_ID="$3"
EXTRA_PATHS="${4:-}"
PIPELINE_BRANCH="${5:-${BRANCH_NAME:-}}"

if [[ ! -s "$OUTPUT_FILE" ]]; then
  echo "ERROR: Missing required output file: $OUTPUT_FILE"
  exit 1
fi

if [[ -z "$PIPELINE_BRANCH" ]]; then
  echo "ERROR: Pipeline branch is required for publishing phase output."
  exit 1
fi

git config user.name "gemini-cli[bot]"
git config user.email "gemini-cli[bot]@users.noreply.github.com"

STASH_BEFORE="$(git rev-parse -q --verify refs/stash || true)"
git stash push --include-untracked -m "pipeline output before branch rebase" >/dev/null || true
STASH_AFTER="$(git rev-parse -q --verify refs/stash || true)"
git fetch origin "$PIPELINE_BRANCH"
git rebase "origin/${PIPELINE_BRANCH}"
if [[ "$STASH_AFTER" != "$STASH_BEFORE" ]]; then
  git stash pop
fi

jq --arg phase "$NEXT_PHASE" '.current_phase = $phase' pipeline/state.json > /tmp/state.json
mv /tmp/state.json pipeline/state.json

git add "$OUTPUT_FILE" pipeline/state.json
if [[ -n "$EXTRA_PATHS" ]]; then
  for extra_path in $EXTRA_PATHS; do
    if [[ -e "$extra_path" ]]; then
      git add "$extra_path"
    else
      echo "Optional path not present; continuing: $extra_path"
    fi
  done
fi
git add pipeline/state.json

if git diff --cached --quiet; then
  echo "Nothing new to commit."
  exit 0
fi

git commit -m "feat(pipeline): $(basename "$OUTPUT_FILE" .md) [run ${RUN_ID}]"
git push origin "HEAD:${PIPELINE_BRANCH}"
