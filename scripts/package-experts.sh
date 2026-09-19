#!/usr/bin/env bash
# Validates and normalizes generated Expert Advisors for artifact delivery.
set -euo pipefail

EXPERTS_DIR="${1:-Experts}"
STRATEGY_FILE="${2:-outputs/03-strategy-designer.md}"

if [[ ! -d "$EXPERTS_DIR" ]]; then
  mkdir -p "$EXPERTS_DIR"
fi

mapfile -t files < <(find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort)
for file in "${files[@]}"; do
  if ! grep -Eq '\b(OnInit|OnTick)[[:space:]]*\(' "$file"; then
    echo "Rejecting non-EA file: $file"
    rm -f "$file"
  fi
done
mapfile -t files < <(find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort)
if [[ "${#files[@]}" -eq 0 ]]; then
  echo "No file was written under ${EXPERTS_DIR}; extracting MQL5 code blocks from ${STRATEGY_FILE%03-strategy-designer.md}04-mt5-engineer.md."
  engineer_file="${STRATEGY_FILE%03-strategy-designer.md}04-mt5-engineer.md"
  if [[ -s "$engineer_file" ]]; then
    awk '
      /^```(mql5|mq5|cpp)?[[:space:]]*$/ { inside = 1; next }
      inside && /^```[[:space:]]*$/ { inside = 0; if (length(code) > 0) { n++; file = "Experts/EXTRACTED_" n ".mq5"; print code > file; close(file); code = "" } next }
      inside { code = code $0 ORS }
    ' "$engineer_file"
  fi
  mapfile -t files < <(find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort)
fi
for file in "${files[@]}"; do
  if ! grep -Eq '\b(OnInit|OnTick)[[:space:]]*\(' "$file"; then
    echo "Rejecting non-EA file: $file"
    rm -f "$file"
  fi
done
mapfile -t files < <(find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort)
if [[ "${#files[@]}" -eq 0 ]]; then
  echo "ERROR: No .mq5 Expert Advisor was generated or extractable."
  exit 1
fi

# Restrict names to recognizable tradeable symbols. Matching every six-letter
# uppercase word in a report can produce an invalid, overlong filename.
markets="$(grep -Eio '\b(EURUSD|GBPUSD|USDJPY|USDCHF|USDCAD|AUDUSD|NZDUSD|EURGBP|EURJPY|GBPJPY|XAUUSD|XAGUSD|US30|NAS100|SPX500|GER40|UK100|BTCUSD|ETHUSD)\b' "$STRATEGY_FILE" 2>/dev/null \
  | tr '[:lower:]' '[:upper:]' \
  | sort -u \
  | paste -sd '_' - || true)"
markets="${markets:-MULTI_MARKET}"
markets="$(printf '%s' "$markets" | tr -cd 'A-Z0-9_')"
if (( ${#markets} > 80 )); then
  markets="MULTI_MARKET"
fi

next_version() {
  local market="$1"
  local version=1
  while [[ -e "${EXPERTS_DIR}/${market}_${version}.mq5" ]]; do
    version=$((version + 1))
  done
  printf '%s' "$version"
}

version="$(next_version "$markets")"
for file in "${files[@]}"; do
  target="${EXPERTS_DIR}/${markets}_${version}.mq5"
  while [[ -e "$target" && "$file" != "$target" ]]; do
    version=$((version + 1))
    target="${EXPERTS_DIR}/${markets}_${version}.mq5"
  done
  if [[ "$file" != "$target" ]]; then
    mv "$file" "$target"
  fi
  echo "Packaged ${target} (FINAL_EA_FILENAME=${markets}_${version}.mq5)"
  version=$((version + 1))
done

find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort
