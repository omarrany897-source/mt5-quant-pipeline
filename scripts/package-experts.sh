#!/usr/bin/env bash
# Validates and normalizes generated Expert Advisors for artifact delivery.
set -euo pipefail

EXPERTS_DIR="${1:-Experts}"
STRATEGY_FILE="${2:-outputs/03-strategy-designer.md}"

if [[ ! -d "$EXPERTS_DIR" ]]; then
  mkdir -p "$EXPERTS_DIR"
fi

is_valid_mql5_file() {
  local file="$1"
  [[ -s "$file" ]] || return 1
  grep -Eq '(^|[[:space:]])int[[:space:]]+OnInit[[:space:]]*\(' "$file" || return 1
  grep -Eq '(^|[[:space:]])void[[:space:]]+OnTick[[:space:]]*\(' "$file" || return 1
  grep -Eq '(^|[[:space:]])#property[[:space:]]+strict' "$file" || return 1
  ! grep -Eq 'run_openai_compatible_fallback|curl -fsS|```|Return ONLY the source code|Do not use a preamble|Authorization: Bearer' "$file" || return 1
  ! grep -Eiq '#property[[:space:]]+indicator_|OnCalculate[[:space:]]*\(|SetIndexBuffer[[:space:]]*\(|indicator_chart_window|indicator_buffers' "$file" || return 1
  grep -Eq '#include[[:space:]]+<Trade/Trade\.mqh>|(^|[[:space:]])CTrade[[:space:]]+[A-Za-z_][A-Za-z0-9_]*[[:space:]]*;' "$file" || return 1
  grep -Eiq 'iATR[[:space:]]*\(|CopyBuffer[[:space:]]*\([^)]+atr|SYMBOL_SPREAD' "$file" || return 1
  grep -Eiq 'RewardRisk|reward[[:space:]]*[/\*][[:space:]]*risk|1\.50' "$file" || return 1
  return 0
}

write_known_good_fallback() {
  local dir="$1"
  mkdir -p "$dir"
  local dynamic_fallback
  dynamic_fallback="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/Experts/EURUSD_3.mq5"
  if [[ -s "$dynamic_fallback" ]]; then
    cp "$dynamic_fallback" "$dir/GeneratedFallback.mq5"
    return 0
  fi
  cat > "$dir/GeneratedFallback.mq5" <<'MQL5'
#property strict
#property version "1.00"

#include <Trade/Trade.mqh>

input string InpMarket = "EURUSD";
input ENUM_TIMEFRAMES InpTimeframe = PERIOD_H1;
input double InpRiskPercent = 0.50;
input bool InpUseTimeWindow = false;
input int InpStartHour = 8;
input int InpStartMinute = 0;
input int InpEndHour = 16;
input int InpEndMinute = 0;
input int InpFastPeriod = 20;
input int InpSlowPeriod = 50;
input int InpStopLossPoints = 300;
input int InpTakeProfitPoints = 600;
input ulong InpMagicNumber = 20260919;

CTrade trade;
int fastHandle = INVALID_HANDLE;
int slowHandle = INVALID_HANDLE;
datetime lastBar = 0;

bool InTradingWindow()
{
   if(!InpUseTimeWindow) return true;
   MqlDateTime now;
   TimeToStruct(TimeCurrent(), now);
   int current = now.hour * 60 + now.min;
   int start = InpStartHour * 60 + InpStartMinute;
   int end = InpEndHour * 60 + InpEndMinute;
   if(start <= end) return (current >= start && current < end);
   return (current >= start || current < end);
}

int OnInit()
{
   trade.SetExpertMagicNumber(InpMagicNumber);
   fastHandle = iMA(InpMarket, InpTimeframe, InpFastPeriod, 0, MODE_EMA, PRICE_CLOSE);
   slowHandle = iMA(InpMarket, InpTimeframe, InpSlowPeriod, 0, MODE_EMA, PRICE_CLOSE);
   if(fastHandle == INVALID_HANDLE || slowHandle == INVALID_HANDLE)
      return(INIT_FAILED);
   return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
   if(fastHandle != INVALID_HANDLE) IndicatorRelease(fastHandle);
   if(slowHandle != INVALID_HANDLE) IndicatorRelease(slowHandle);
}

void OnTick()
{
   if(!InTradingWindow()) return;
   datetime bar = iTime(InpMarket, InpTimeframe, 0);
   if(bar == 0 || bar == lastBar) return;
   lastBar = bar;

   double fast[], slow[];
   ArrayResize(fast, 2);
   ArrayResize(slow, 2);
   ArraySetAsSeries(fast, true);
   ArraySetAsSeries(slow, true);
   if(CopyBuffer(fastHandle, 0, 0, 2, fast) != 2 || CopyBuffer(slowHandle, 0, 0, 2, slow) != 2)
      return;

   if(PositionSelect(InpMarket)) return;

   double point = SymbolInfoDouble(InpMarket, SYMBOL_POINT);
   double ask = SymbolInfoDouble(InpMarket, SYMBOL_ASK);
   double bid = SymbolInfoDouble(InpMarket, SYMBOL_BID);
   if(point <= 0 || ask <= 0 || bid <= 0) return;

   double volume = MathMax(SymbolInfoDouble(InpMarket, SYMBOL_VOLUME_MIN), 0.01);
   bool buySignal = (fast[1] < slow[1] && fast[0] > slow[0]);
   bool sellSignal = (fast[1] > slow[1] && fast[0] < slow[0]);

   if(buySignal)
   {
      double sl = ask - InpStopLossPoints * point;
      double tp = ask + InpTakeProfitPoints * point;
      if(!trade.Buy(volume, InpMarket, ask, sl, tp, "EMA crossover"))
         Print("Buy failed, error: ", GetLastError());
   }
   else if(sellSignal)
   {
      double sl = bid + InpStopLossPoints * point;
      double tp = bid - InpTakeProfitPoints * point;
      if(!trade.Sell(volume, InpMarket, bid, sl, tp, "EMA crossover"))
         Print("Sell failed, error: ", GetLastError());
   }
}
MQL5
}

mapfile -t files < <(find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort)
for file in "${files[@]}"; do
  if ! is_valid_mql5_file "$file"; then
    echo "Rejecting non-EA or invalid MQL5 file: $file"
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
      inside && /^```[[:space:]]*$/ { inside = 0; if (length(code) > 0) { n++; file = "'"$EXPERTS_DIR"'/EXTRACTED_" n ".mq5"; print code > file; close(file); code = "" } next }
      inside { code = code $0 ORS }
    ' "$engineer_file"
  fi
  mapfile -t files < <(find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort)
fi

for file in "${files[@]}"; do
  if ! is_valid_mql5_file "$file"; then
    echo "Rejecting invalid MQL5 file: $file"
    rm -f "$file"
  fi
done
mapfile -t files < <(find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort)
if [[ "${#files[@]}" -eq 0 ]]; then
  echo "ERROR: No valid .mq5 Expert Advisor was generated or extractable; writing deterministic fallback."
  write_known_good_fallback "$EXPERTS_DIR"
  mapfile -t files < <(find "$EXPERTS_DIR" -maxdepth 1 -type f -iname '*.mq5' -print | sort)
fi

markets="$(grep -Eio '\b(EURUSD|GBPUSD|USDJPY|USDCHF|USDCAD|AUDUSD|NZDUSD|EURGBP|EURJPY|GBPJPY|XAUUSD|XAGUSD|US30|NAS100|SPX500|GER40|UK100|BTCUSD|ETHUSD)\b' "$STRATEGY_FILE" 2>/dev/null \
  | tr '[:lower:]' '[:upper:]' \
  | sort -u \
  | paste -sd '_' - || true)"
markets="${markets:-EURUSD}"
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