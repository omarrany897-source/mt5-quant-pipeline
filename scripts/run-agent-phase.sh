#!/usr/bin/env bash
# Runs a single pipeline agent phase via Gemini CLI with retries and output validation.
set -euo pipefail

PHASE_ID="$1"
OUTPUT_FILE="$2"
shift 2
INPUT_FILES=("$@")
MAX_ATTEMPTS="${MAX_ATTEMPTS:-3}"
GEMINI_INSTALL_TIMEOUT_SECONDS="${GEMINI_INSTALL_TIMEOUT_SECONDS:-600}"
GEMINI_TIMEOUT_SECONDS="${GEMINI_TIMEOUT_SECONDS:-1800}"
BACKUP_API_KEY="${GEMINI_API_KEY_BACKUP:-}"

echo "Installing Gemini CLI (timeout: ${GEMINI_INSTALL_TIMEOUT_SECONDS}s)..."
if ! timeout --foreground --signal=TERM --kill-after=30s \
  "${GEMINI_INSTALL_TIMEOUT_SECONDS}s" npm install -g @google/gemini-cli@latest; then
  echo "ERROR: Gemini CLI installation failed or timed out."
  exit 1
fi

PROMPT="Read prompts/${PHASE_ID}.md and execute it exactly."
for input in "${INPUT_FILES[@]}"; do
  if [[ -n "$input" ]]; then
    PROMPT="${PROMPT} Read ${input}."
  fi
done

PROMPT="${PROMPT}

CRITICAL REQUIREMENTS:
- Use the Write tool to create ${OUTPUT_FILE} on disk.
- Do NOT finish until ${OUTPUT_FILE} exists and contains the full deliverable.
- Include all required sections, tables, and metrics from the prompt.
- Conduct web searches where the prompt requires literature review."

mkdir -p "$(dirname "$OUTPUT_FILE")"

for attempt in $(seq 1 "$MAX_ATTEMPTS"); do
  echo "=== Phase ${PHASE_ID}: attempt ${attempt}/${MAX_ATTEMPTS} ==="
  if timeout --foreground --signal=TERM --kill-after=30s \
    "${GEMINI_TIMEOUT_SECONDS}s" \
    env GEMINI_API_KEY="${GEMINI_API_KEY}" \
    gemini --yolo --model gemini-2.0-flash --prompt "$PROMPT"; then
    if [[ -s "$OUTPUT_FILE" ]]; then
      echo "Success: ${OUTPUT_FILE} ($(wc -c < "$OUTPUT_FILE") bytes)"
      exit 0
    fi
  elif [[ "$?" -eq 124 ]]; then
    echo "Gemini timed out after ${GEMINI_TIMEOUT_SECONDS}s."
  else
    echo "Gemini exited with an error."
  fi

  if [[ -n "$BACKUP_API_KEY" ]]; then
    echo "Trying configured backup Gemini API key."
    if timeout --foreground --signal=TERM --kill-after=30s \
      "${GEMINI_TIMEOUT_SECONDS}s" \
      env GEMINI_API_KEY="${BACKUP_API_KEY}" \
      gemini --yolo --model gemini-2.0-flash --prompt "$PROMPT"; then
      if [[ -s "$OUTPUT_FILE" ]]; then
        echo "Success with backup key: ${OUTPUT_FILE} ($(wc -c < "$OUTPUT_FILE") bytes)"
        exit 0
      fi
    else
      echo "Backup Gemini key also failed."
    fi
  fi

  echo "Output missing or empty after attempt ${attempt}. Retrying in 45s..."
  sleep 45
done

echo "ERROR: ${OUTPUT_FILE} was not produced after ${MAX_ATTEMPTS} attempts."
exit 1
