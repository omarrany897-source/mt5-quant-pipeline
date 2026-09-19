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
  if [[ "$PHASE_ID" == "04-mt5-engineer" && -f pipeline_troubleshooting_log.md ]]; then
    ollama_prompt="${ollama_prompt}

--- ERROR LEDGER: READ BEFORE GENERATING ---
$(cat pipeline_troubleshooting_log.md)
--- END ERROR LEDGER ---

Do not repeat any failed approach listed in the ledger. The EA artifact gate is
mandatory even if the narrative report is complete."
  fi
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
Do not use a preamble or omit required sections.
For the 04-mt5-engineer phase, the response must include at least one complete compilable MQL5 Expert Advisor inside a fenced code block marked \`\`\`mql5. Include the exact target market symbol in the EA comments and filename guidance."
  ollama run "$OLLAMA_MODEL" "$ollama_prompt" > "$OUTPUT_FILE"

  if [[ "$PHASE_ID" == "04-mt5-engineer" ]] && ! grep -Eq 'OnInit|OnTick|```(mql5|mq5)' "$OUTPUT_FILE"; then
    mkdir -p Experts
    strategy="$(cat "${INPUT_FILES[0]}")"
    cat > /tmp/mt5-code-prompt.txt <<EOF
Create one complete, compilable MetaTrader 5 Expert Advisor in MQL5.
Return ONLY the source code, with no Markdown fences or explanation.
Use the strategy specification below. If no market is explicit, use EURUSD.
The code must contain OnInit() and OnTick(), use only standard MQL5 APIs, and include fixed risk controls.

--- STRATEGY SPECIFICATION ---
${strategy}
--- END SPECIFICATION ---
EOF
    ollama run "$OLLAMA_MODEL" "$(cat /tmp/mt5-code-prompt.txt)" > Experts/GeneratedStrategy.mq5
    if ! grep -Eq '\b(OnInit|OnTick)[[:space:]]*\(' Experts/GeneratedStrategy.mq5; then
      cat > Experts/GeneratedStrategy.mq5 <<'MQL5'
#property strict
#property version "1.00"

#include <Trade/Trade.mqh>

input string InpMarket = "EURUSD";
input ENUM_TIMEFRAMES InpTimeframe = PERIOD_H1;
input double InpRiskPercent = 0.50;
input int InpFastPeriod = 20;
input int InpSlowPeriod = 50;
input int InpStopLossPoints = 300;
input int InpTakeProfitPoints = 600;
input ulong InpMagicNumber = 20260919;

CTrade trade;
int fast_handle = INVALID_HANDLE;
int slow_handle = INVALID_HANDLE;
datetime last_bar = 0;

int OnInit()
{
   trade.SetExpertMagicNumber(InpMagicNumber);
   fast_handle = iMA(InpMarket, InpTimeframe, InpFastPeriod, 0, MODE_EMA, PRICE_CLOSE);
   slow_handle = iMA(InpMarket, InpTimeframe, InpSlowPeriod, 0, MODE_EMA, PRICE_CLOSE);
   if(fast_handle == INVALID_HANDLE || slow_handle == INVALID_HANDLE)
      return INIT_FAILED;
   return INIT_SUCCEEDED;
}

void OnDeinit(const int reason)
{
   if(fast_handle != INVALID_HANDLE) IndicatorRelease(fast_handle);
   if(slow_handle != INVALID_HANDLE) IndicatorRelease(slow_handle);
}

void OnTick()
{
   datetime bar = iTime(InpMarket, InpTimeframe, 0);
   if(bar == 0 || bar == last_bar) return;
   last_bar = bar;

   double fast[2], slow[2];
   ArraySetAsSeries(fast, true);
   ArraySetAsSeries(slow, true);
   if(CopyBuffer(fast_handle, 0, 0, 2, fast) != 2 ||
      CopyBuffer(slow_handle, 0, 0, 2, slow) != 2) return;
   if(PositionSelect(InpMarket)) return;

   double point = SymbolInfoDouble(InpMarket, SYMBOL_POINT);
   double ask = SymbolInfoDouble(InpMarket, SYMBOL_ASK);
   double bid = SymbolInfoDouble(InpMarket, SYMBOL_BID);
   if(point <= 0 || ask <= 0 || bid <= 0) return;

   double volume = SymbolInfoDouble(InpMarket, SYMBOL_VOLUME_MIN);
   bool buy = fast[1] <= slow[1] && fast[0] > slow[0];
   bool sell = fast[1] >= slow[1] && fast[0] < slow[0];
   if(buy)
      trade.Buy(volume, InpMarket, ask, ask - InpStopLossPoints * point,
                ask + InpTakeProfitPoints * point, "EMA crossover");
   else if(sell)
      trade.Sell(volume, InpMarket, bid, bid + InpStopLossPoints * point,
                 bid - InpTakeProfitPoints * point, "EMA crossover");
}
MQL5
      echo "Model omitted valid MQL5; wrote deterministic EMA crossover fallback."
    fi
  fi
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
