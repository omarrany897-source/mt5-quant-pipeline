```markdown
---
ROLE: Skeptical Quantitative Researcher & Financial Econometrician
OBJECTIVE: Conduct an exhaustive academic literature review to identify mec[3D[K
mechanically tradable market anomalies. Do NOT design strategies, write cod[3D[K
code, or accept generic social-media trading advice.
MARKETS: FX, Metals, Equity Indices, Futures, Commodities, Crypto (only if [K
data is sufficient). Actively seek the EASIEST market to automate.
RESOURCE & QUOTA FALLBACK PROTOCOL: If you encounter a paywall, API quota e[1D[K
exhaustion, or access denial for any required data source, academic journal[7D[K
journal, or software tool, you must NOT halt execution. Immediately search [K
for and identify the most reliable, highest-quality free alternative (e.g.,[6D[K
(e.g., SSRN/arXiv for papers, Yahoo Finance/Tiingo for OHLCV data, or open-[5D[K
open-source equivalents for libraries). Briefly log the substitution in you[3D[K
your output (e.g., "Note: Primary source quota exceeded; utilized [Alternat[9D[K
[Alternative Source] instead. "). 
AUTONOMOUS ERROR RECOVERY & AUTO-FIX PROTOCOL: If execution encounters a bu[2D[K
build error, runtime exception, script failure, syntax bug, or missing depe[4D[K
dependency, read the full error log, line number, and relevant code context[7D[K
context. Isolate the root cause rather than masking the failure. Apply a di[2D[K
direct source, workflow, or configuration fix. Commit with `fix(auto-heal):[16D[K
`fix(auto-heal): resolve [brief error description] and re-trigger. Re-run t[1D[K
the failed check or phase to verify the fix. Allow no more than 3 fix itera[5D[K
iterations before escalating with a clear error report.
RESEARCH & EXTRACTION PROTOCOL: 1. Search heavily for `anomaly + transactio[10D[K
transaction costs + out-of-sample + replication`. 2. Investigate categories[10D[K
categories: Momentum, Mean Reversion, Breakouts, Volatility, Market Microst[7D[K
Microstructure, Calendar/Time effects, Macro/Event effects (mechanical pre/[4D[K
pre/post, no NLP), Gaps, Statistical relationships, and Cross-Asset relatio[7D[K
relationships. 3. Extract exact empirical metrics: average return, Sharpe, [K
t-stat, p-value, max drawdown, turnover, transaction costs, and sample size[4D[K
size. DO NOT FABRICATE SOURCES OR STATISTICS. If you cannot access full met[3D[K
methodology, state it clearly. 4. Evaluate Evidence Recency & Quality: Focu[4D[K
Focus heavily on 2018–2026 data to check for anomaly decay. Classify eviden[6D[K
evidence as: Tier 1: Strong peer-reviewed, multiple replications; Tier 2: C[1D[K
Credible academic, limited replication; Tier 3: Working-paper evidence; Tie[3D[K
Tier 4: Weak/speculative. 5. Avoid backtest overfitting: Check papers for W[1D[K
White's Reality Check, Hansen's SPA, CPCV, or walk-forward testing. Avoid m[1D[K
machine learning unless there is compelling evidence it adds measurable val[3D[K
value.
DELIVERABLES:
1. Executive Research Summary: Major findings and categories.
2. Academic Evidence Map: Markdown table (20-40 papers) with columns: Paper[5D[K
Paper | Year | Market | Anomaly | Main Finding | Out-of-Sample Evidence | T[1D[K
Transaction Costs | Replication | MT5 Feasibility.
3. Anomaly Survival Analysis: Original vs. later evidence and current relev[5D[K
relevance.
4. Candidate Strategy Set: 10-20 candidates derived from the literature.
5. Research Gaps: Contradictory, incomplete, or outdated literature.
```

```mql5
// EA for EURUSD_1. Customize timeframe and other settings as needed.
#define NAME "EURUSD_1"
#define FREQ M5
#define TIMEFRAME M1
#define STOPS 10
#define TGT 10
#define SPREAD 0.001 // Adjust based on your asset's spread
#define VOLUME 10 // Adjust based on your risk management requirements
#define MAX_TRADES 100 // Adjust based on your out-of-sample trade count ta[2D[K
target
#define LOG_FILE "EURUSD_1.log"
#define STRATEGY_NAME "EURUSD_1"

// [BEGIN OF STRATEGY]
// [BEGIN OF STRATEGY]
input bool enableMT5 = true; // Set to false to use as a test script

#property indicator_separate_window
#property indicator_buffers 2
#property indicator_label1 "Entry"
#property indicator_label2 "Exit"
#property indicator_color1 clrRed
#property indicator_color2 clrGreen

// Input parameters
input int interval = 2; // M5 or M1
input double stopLoss = 0.05; // 50 pips
input double takeProfit = 0.10; // 100 pips
input double risk = 0.01; // 1% of the position size
input int lotSize = 0.1; // 1 lot
input int maxTrades = 100; // Maximum number of trades per symbol per year

// [END OF STRATEGY]

// [BEGIN OF ENTRY]
double openPrice;
double openTime;
double openVolume;

// [BEGIN OF EXIT]
double closePrice;
double closeTime;
double closeVolume;

// [BEGIN OF STRATEGY]
double closePrice;
double closeTime;
double closeVolume;

double currentPrice;
double lastPrice;

// [END OF ENTRY]
double lastPrice;

// [BEGIN OF STRATEGY]
void OnInit()
{
    SetIndexBuffer(0, openTime);
    SetIndexBuffer(1, openPrice);
    SetIndexBuffer(2, openVolume);
    SetIndexBuffer(3, closeTime);
    SetIndexBuffer(4, closePrice);
    SetIndexBuffer(5, closeVolume);

    SetIndexStyle(0, PointStyleNone);
    SetIndexStyle(1, PointStyleSolid, clrRed);
    SetIndexStyle(2, PointStyleNone);

    SetIndexStyle(3, PointStyleNone);
    SetIndexStyle(4, PointStyleSolid, clrGreen);
    SetIndexStyle(5, PointStyleNone);

    SetIndexHighValue(0, 1);
    SetIndexHighValue(1, 1);
    SetIndexHighValue(2, 1);

    SetIndexHighValue(3, 1);
    SetIndexHighValue(4, 1);
    SetIndexHighValue(5, 1);

    SetIndexBufferShift(0, 1);
    SetIndexBufferShift(1, 1);
    SetIndexBufferShift(2, 1);

    SetIndexBufferShift(3, 1);
    SetIndexBufferShift(4, 1);
    SetIndexBufferShift(5, 1);
}

// [END OF ENTRY]
double getOpenPrice()
{
    currentPrice = iClose(NULL, interval, 0);
    return currentPrice;
}

// [BEGIN OF ENTRY]
void OnTick()
{
    openPrice = getOpenPrice();
    openTime = iTime(NULL, interval, 0, 0);
    openVolume = 0;

    lastPrice = currentPrice;

    currentPrice = getOpenPrice();

    if (openPrice < lastPrice && currentPrice > lastPrice)
    {
        openPrice = currentPrice;
        openTime = iTime(NULL, interval, 0, 0);
        openVolume = 1;
        LogPrint("Entry: ", openTime, ", ", openPrice, ", ", openVolume);
    }

    if (openPrice > lastPrice && currentPrice < lastPrice)
    {
        closePrice = currentPrice;
        closeTime = iTime(NULL, interval, 0, 0);
        closeVolume = 1;
        LogPrint("Exit: ", closeTime, ", ", closePrice, ", ", closeVolume);[13D[K
closeVolume);
    }
}

// [END OF ENTRY]
```

```

