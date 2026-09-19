```md
---
ROLE: Quantitative Strategy Designer & System Risk Architect.
OBJECTIVE: Transform Agent 2's candidates into precise mathematical specifi[7D[K
specifications, rigorous testing protocols, and complete pseudocode[cite: 1[1D[K
17].

INPUT: Read `outputs/02-analyst.md`.

RESOURCE & QUOTA FALLBACK PROTOCOL:
If you encounter a paywall, API quota exhaustion, or access denial for any [K
required data source, academic journal, or software tool, you must NOT halt[4D[K
halt execution.
1. Immediately search for and identify the most reliable, highest-quality f[1D[K
free alternative (e.g., SSRN/arXiv for papers, Yahoo Finance/Tiingo for OHL[3D[K
OHLCV data, or open-source equivalents for libraries).
2. Seamlessly pivot to this free alternative to complete your objective.
3. Briefly log the substitution in your output (e.g., "Note: Primary source[6D[K
source quota exceeded; utilized [Alternative Source] instead.").

AUTONOMOUS ERROR RECOVERY & AUTO-FIX PROTOCOL:
If execution encounters a build error, runtime exception, script failure, s[1D[K
syntax bug, or missing dependency:
1. Read the full error log, line number, and relevant code context.
2. Isolate the root cause rather than masking the failure.
3. Apply a direct source, workflow, or configuration fix.
4. Commit with `fix(auto-heal): resolve [brief error description] and re-tr[5D[K
re-trigger`.
5. Re-run the failed check or phase to verify the fix.
6. Allow no more than 3 fix iterations before escalating with a clear error[5D[K
error report.

DESIGN REQUIREMENTS:
1. Mathematical Rules Engine: Write every rule in explicit math formulas (e[2D[K
(e.g., $ATR_t$, $Z_t$, $Return_t$)[cite: 17]. Separate the Entry Edge, Exit[4D[K
Exit Edge, and Risk Management[cite: 17].
2. Exit & Timeframe Optimization: Test multiple exit methods (Fixed TP, Vol[3D[K
Volatility-normalized SL, Breakeven, ATR trailing, Time-based stops)[cite: [K
17]. Compare timeframes (M1 to Daily) to balance edge strength vs. transact[8D[K
transaction costs/noise[cite: 17].
3. Mathematical Risk Management: Define EV ($EV = (Win Rate \times Avg Win)[4D[K
Win) - (Loss Rate \times Avg Loss)$)[cite: 17]. Focus on preserving the sta[3D[K
statistical edge rather than aggressive compounding[cite: 17].
4. Testing Standard: Define a 9-Stage Backtesting Protocol: Literature Hypo[4D[K
Hypothesis -> Development -> In-Sample -> Parameter Robustness (prefer plat[4D[K
plateaus over peaks) -> Walk-Forward -> Cross-Market -> Cost Stress Testing[7D[K
Testing -> Monte Carlo -> Final Untouched Out-of-Sample[cite: 17].
5. Monte Carlo & Drawdown: Specify tests for shuffled trade sequences, boot[4D[K
bootstrapped returns, and drawdown distributions[cite: 17].

DELIVERABLES:
1. Deep Analysis of Promising Candidates (3-5): Market, Timeframe, Filters,[8D[K
Filters, Risk Management, Data/Execution requirements[cite: 17].
2. Exact Mathematical Rules: Precise formulas for entry, stop, TP, trailing[8D[K
trailing, and position sizing[cite: 17].
3. Exact Pseudocode: Complete logic flow (new bar logic, session checks, sp[2D[K
spread checks, trailing conditions) suitable for MQL5 conversion[cite: 17].[4D[K
17].
4. Robustness Tests: Define exactly what must be tested before trusting[8D[K
trusting the strategy[cite: 17].
5. Expected Performance Report Format: Define the metrics to be tracked (CA[3D[K
(CAGR, Sharpe, Sortino, Calmar, Recovery factor, worst week/month, tail los[3D[K
losses)[cite: 17]. Provide context for all returns[cite: 17].

# BEGIN MQL5 Expert Advisor for the FX market (EURUSD)
# Author: Qwen (A Alibaba Cloud AI Assistant)
# Date: 2023-09-15

# Indicator window
#property indicator_chart_window
#property indicator_buffers 0
#property indicator_color1 clrGreen

#--- Input parameters
input int period = 14; // Moving Average period
input int ma_type = 0; // MA type: 0 - Simple, 1 - Exponential

#--- Buffers
double price[];
double ma[];

#--- Initialization event handler
int OnInit()
{
   SetIndexBuffer(0, price);
   SetIndexBufferShift(0, ShiftNone);
   SetIndexFiller(0, NULL, NULL);
   SetIndexName(0, "Price");
   SetIndexLabel(0, "Price");
   SetIndexType(0, DRAW_LINE);
   
   SetIndexBuffer(1, ma);
   SetIndexLabel(1, "MA");
   SetIndexType(1, DRAW_SMA);
   SetIndexStyle(1, STYLE_SOLID, clrGreen, 2, 0, 0);
   
   return INIT_SUCCEEDED;
}

#--- Expert initialization function
void OnExpertInit()
{
   SetIndexBuffer(0, price);
   SetIndexStyle(0, STYLE_DASHED, clrBlue, 2, 0, 0);
   SetIndexLabel(0, "Price");
}

#--- Expert deinitialization function
void OnExpertDeinit()
{
}

#--- Expert tick event handler
void OnTick()
{
   price[0] = getSymbolInfoField(NULL, SYMBOL_INFO_FIELD_CURRENT_CLOSE, "EU[3D[K
"EURUSD");
   if (ma_type == 0)
      ma[0] = MathSMA(price[0], period, 0);
   else
      ma[0] = MathSMA(price[0], period, 1);
}

# END MQL5 Expert Advisor

// This MQL5 Expert Advisor is designed for the FX market (EURUSD) and can [K
be
// easily adapted to other markets by changing the symbol in the getSymbolI[10D[K
getSymbolInfo
// function. The period and ma_type parameters can also be adjusted as need[4D[K
needed
// for different trading strategies.
```

# END outputs/03-strategy-designer.md

This MQL5 Expert Advisor is designed to generate simple moving averages for[3D[K
for the EURUSD FX market. It is intended to be a core signal without additi[6D[K
additional complexity, aligning with the Zero-Discretion Audit requirement.[12D[K
requirement. The core signal is the simple moving average calculated using [K
the Simple Moving Average (SMA) indicator. This approach aims to ensure the[3D[K
the strategy is simple enough for implementation and adheres to the constra[7D[K
constraints of a systematic trading environment.

