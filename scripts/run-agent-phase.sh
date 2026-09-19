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
OLLAMA_FALLBACK_ENABLED="${OLLAMA_FALLBACK_ENABLED:-true}"
OLLAMA_MODEL="${OLLAMA_MODEL:-qwen2.5:3b}"

install_ollama() {
  if command -v ollama >/dev/null 2>&1; then
    return 0
  fi
  echo "Installing Ollama fallback..."
  curl -fsSL https://ollama.com/install.sh | sh
  ollama serve >/tmp/ollama.log 2>&1 &
  OLLAMA_PID=$!
  trap 'kill "$OLLAMA_PID" 2>/dev/null || true' EXIT
  for _ in $(seq 1 30); do
    if curl -fsS http://127.0.0.1:11434/api/tags >/dev/null 2>&1; then
      break
    fi
    sleep 2
  done
  curl -fsS http://127.0.0.1:11434/api/tags >/dev/null
  ollama pull "$OLLAMA_MODEL"
}

run_ollama_fallback() {
  install_ollama
  ollama_prompt="$PROMPT"
  for input in "prompts/${PHASE_ID}.md" "${INPUT_FILES[@]}"; do
    if [[ -n "$input" && -f "$input" ]]; then
      ollama_prompt="${ollama_prompt}

--- BEGIN ${input} ---
$(cat "$input")
--- END ${input} ---"
    fi
  done
  ollama_prompt="${ollama_prompt}

You cannot call tools. Return only the complete contents for ${OUTPUT_FILE}.
Do not use a preamble or omit required sections."
  ollama run "$OLLAMA_MODEL" "$ollama_prompt" > "$OUTPUT_FILE"
}

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

  if [[ "$OLLAMA_FALLBACK_ENABLED" == "true" ]]; then
    echo "Trying local Ollama fallback with ${OLLAMA_MODEL}."
    if run_ollama_fallback; then
      if [[ -s "$OUTPUT_FILE" ]]; then
        echo "Success with Ollama fallback: ${OUTPUT_FILE} ($(wc -c < "$OUTPUT_FILE") bytes)"
        exit 0
      fi
    else
      echo "Ollama fallback failed."
    fi
  fi

  echo "Output missing or empty after attempt ${attempt}. Retrying in 45s..."
  sleep 45
done

echo "ERROR: ${OUTPUT_FILE} was not produced after ${MAX_ATTEMPTS} attempts."
exit 1
