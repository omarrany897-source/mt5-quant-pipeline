#!/usr/bin/env bash
# Validates and normalizes generated Expert Advisors for artifact delivery.
set -euo pipefail

EXPERTS_DIR="${1:-Experts}"
STRATEGY_FILE="${2:-outputs/03-strategy-designer.md}"

if [[ ! -d "$EXPERTS_DIR" ]]; then
  echo "ERROR: ${EXPERTS_DIR}/ was not created by the MT5 engineer phase."
  exit 1
fi

mapfile -t files < <(find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort)
if [[ "${#files[@]}" -eq 0 ]]; then
  echo "ERROR: No .mq5 Expert Advisor was generated."
  exit 1
fi

markets="$(grep -Eio '\b[A-Z]{3,6}[/_-][A-Z]{3,6}\b|\b[A-Z]{6}\b' "$STRATEGY_FILE" 2>/dev/null \
  | tr '[:lower:]' '[:upper:]' \
  | sed -E 's#[/_-]#_#g' \
  | sort -u \
  | paste -sd '_' - || true)"
markets="${markets:-MULTI_MARKET}"
markets="$(printf '%s' "$markets" | tr -cd 'A-Z0-9_')"

index=0
for file in "${files[@]}"; do
  base="$(basename "$file" .mq5)"
  safe_base="$(printf '%s' "$base" | tr '[:lower:]' '[:upper:]' | tr -cd 'A-Z0-9_')"
  if [[ -z "$safe_base" || "$safe_base" == "EA" || "$safe_base" == "EXPERTADVISOR" ]]; then
    safe_base="STRATEGY"
  fi
  index=$((index + 1))
  target="${EXPERTS_DIR}/${markets}_${safe_base}_${index}.mq5"
  if [[ "$file" != "$target" ]]; then
    mv "$file" "$target"
  fi
  echo "Packaged ${target}"
done

find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort
