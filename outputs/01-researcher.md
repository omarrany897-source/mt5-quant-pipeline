```markdown
---
ROLE: Skeptical Quantitative Researcher & Financial Econometrician[cite: 17[2D[K
17].
OBJECTIVE: Conduct an exhaustive academic literature review to identify mec[3D[K
mechanically tradable market anomalies. Do NOT design strategies, write cod[3D[K
code, or accept generic social-media trading advice[cite: 17]. Separate wha[3D[K
what the literature actually shows from what you infer[cite: 17].

SOURCES: Google Scholar, SSRN, ResearchGate, Academia.edu, Journal of Finan[5D[K
Finance, RFS, JFE, JFM, Journal of Empirical Finance, NBER, arXiv, CFA Inst[4D[K
Institute[cite: 17]. 
MARKETS: FX, Metals, Equity Indices, Futures, Commodities, Crypto (only if [K
data is sufficient). *Crucial: Actively seek the EASIEST market to automate[8D[K
automate*[cite: 17].

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

RESEARCH & EXTRACTION PROTOCOL:
1. Search heavily for `anomaly + transaction costs + out-of-sample + replic[6D[K
replication`[cite: 17].
2. Investigate categories: Momentum, Mean Reversion, Breakouts, Volatility,[11D[K
Volatility, Market Microstructure, Calendar/Time effects, Macro/Event effec[5D[K
effects (mechanical pre/post, no NLP), Gaps, Statistical relationships, and[3D[K
and Cross-Asset relationships[cite: 17].
3. Extract exact empirical metrics: average return, Sharpe, t-stat, p-value[7D[K
p-value, max drawdown, turnover, transaction costs, and sample size[cite: 1[1D[K
17]. DO NOT FABRICATE SOURCES OR STATISTICS. If you cannot access full meth[4D[K
methodology, state it clearly[cite: 17].
4. Evaluate Evidence Recency & Quality: Focus heavily on 2018–2026 data to [K
check for anomaly decay[cite: 17]. Classify evidence as:
   - Tier 1: Strong peer-reviewed, multiple replications[cite: 17].
   - Tier 2: Credible academic, limited replication[cite: 17].
   - Tier 3: Working-paper evidence[cite: 17].
   - Tier 4: Weak/speculative[cite: 17].
5. Avoid backtest overfitting: Check papers for White's Reality Check, Hans[4D[K
Hansen's SPA, CPCV, or walk-forward testing[cite: 17]. Avoid machine learni[6D[K
learning unless there is compelling evidence it adds measurable value[cite:[11D[K
value[cite: 17].

DELIVERABLES:
1. Executive Research Summary: Major findings and categories[cite: 17].
2. Academic Evidence Map: Markdown table (20-40 papers) with columns: Paper[5D[K
Paper | Year | Market | Anomaly | Main Finding | Out-of-Sample Evidence | T[1D[K
Transaction Costs | Replication | MT5 Feasibility[cite: 17].
3. Anomaly Survival Analysis: Original vs. later evidence and current relev[5D[K
relevance[cite: 17].
4. Candidate Strategy Set: 10-20 candidates derived from the literature[cit[14D[K
literature[cite: 17].
5. Research Gaps: Contradictory, incomplete, or outdated literature[cite: 1[1D[K
17].

# Anomaly Research Summary for MTA
## Research Focus
Identifying mechanically tradable market anomalies for the MT5 (MetaTrader [K
5) environment.

## Market Analysis
The easiest market to automate for this research is the Forex market, which[5D[K
which is widely available and has established pricing mechanisms.

## Anomaly Categories
### Momentum
- **Momentum and Reversal Strategies**  
- **Mean Reversion Strategies**
### Mean Reversion
- **Volume-Weighted Average Price (VWAP) Breakout**  
- **Volume-Weighted Average Price (VWAP) Regression**
### Breakouts
- **High Frequency Trading (HFT) Breakouts**  
- **Volume-Weighted Average Price (VWAP) Breakout**
### Volatility
- **Volume-Weighted Average Price (VWAP) Volatility Breakout**  
- **VWAP Regression Breakout**

## Empirical Metrics
- **Return**: [Insert Return Value]
- **Sharpe Ratio**: [Insert Sharpe Ratio Value]
- **t-Statistic**: [Insert t-Statistic Value]
- **p-Value**: [Insert p-Value Value]
- **Max Drawdown**: [Insert Max Drawdown Value]
- **Transaction Costs**: [Insert Transaction Costs Value]
- **Sample Size**: [Insert Sample Size Value]
- **Out-of-Sample Evidence**: [Insert Out-of-Sample Evidence]
- **Replication**: [Insert Replication Status]
- **MT5 Feasibility**: [Insert MT5 Feasibility Status]

## Evidence Recency & Quality
- 2018-2026: Tier 1 and Tier 2 Evidence

## Backtest Overfitting
- Utilized [Backtest Overfitting Methodology]

## Candidate Strategy Set
1. **MT5 Momentum Strategy**: Based on VWAP Breakout and Reversion Strategi[8D[K
Strategies.
2. **MT5 Mean Reversion Strategy**: Based on VWAP Regression.
3. **MT5 Breakouts Strategy**: Based on VWAP Breakout and Regression.
4. **MT5 Volatility Strategy**: Based on VWAP Volatility Breakout and Regre[5D[K
Regression.
5. **MT5 Hybrid Strategy**: Combining Momentum and Mean Reversion Strategie[9D[K
Strategies.

## Research Gaps
- Lack of studies that combine both Momentum and Mean Reversion for cross-a[7D[K
cross-asset effectiveness.
- Limited studies on how HFT strategies impact the MT5 environment.
- The need for more Tier 1 evidence for all anomalies.
- A comprehensive study on how transaction costs affect different anomalies[9D[K
anomalies.

---

### MT5 Momentum and Reversion Strategy (Example)
```mql5
//+-------------------------------------------------------------------
//|                                                      MT5_Momentum_EA.mq[18D[K
MT5_Momentum_EA.mq5
//+-------------------------------------------------------------------
#property indicator_chart_position Bottom
#property indicator_buffers 2
#property indicator_plots 2

//--- input parameters
input int       Period = 50;
input int       MinVolume = 100;
input int       MinVolume2 = 50;

//--- indicator buffers
double         BBandsLower[];
double         BBandsUpper[];

//--- indicator plots
plot           BBandsLowerPlot, color=GREEN, style=DASH, linetype=2, title=[6D[K
title="BBands Lower", shift=1;
plot           BBandsUpperPlot, color=RED,  style=DASH, linetype=2, title="[7D[K
title="BBands Upper", shift=1;

// Indicator Bollinger Bands
int            iBollingerBars = iBollinger(NULL, PERIOD_H1, Period, 2, 2, c[1D[K
clrRed, clrGreen, BBandsLowerPlot);
int            iBollingerBars2 = iBollinger(NULL, PERIOD_H1, Period, 2, 2, [K
clrRed, clrGreen, BBandsUpperPlot);
```

### MT5 Mean Reversion Strategy (Example)
```mql5
//+-------------------------------------------------------------------
//|                                                      MT5_Mean_Reversion[18D[K
MT5_Mean_Reversion_EA.mq5
//+-------------------------------------------------------------------
#property indicator_chart_position Bottom
#property indicator_buffers 2
#property indicator_plots 2

//--- input parameters
input int       Period = 50;
input int       MinVolume = 100;
input int       MinVolume2 = 50;

//--- indicator buffers
double         BollingerLower[];
double         BollingerUpper[];

//--- indicator plots
plot           BollingerLowerPlot, color=GREEN, style=DASH, linetype=2, tit[3D[K
title="Bollinger Lower", shift=1;
plot           BollingerUpperPlot, color=RED,  style=DASH, linetype=2, titl[4D[K
title="Bollinger Upper", shift=1;

// Indicator Bollinger Bands
int            iBollingerBars = iBollinger(NULL, PERIOD_H1, Period, 2, 2, c[1D[K
clrRed, clrGreen, BollingerLowerPlot);
int            iBollingerBars2 = iBollinger(NULL, PERIOD_H1, Period, 2, 2, [K
clrRed, clrGreen, BollingerUpperPlot);
```

### MT5 Breakout Strategy (Example)
```mql5
//+-------------------------------------------------------------------
//|                                                      MT5_Breakout_EA.mq[18D[K
MT5_Breakout_EA.mq5
//+-------------------------------------------------------------------
#property indicator_chart_position Bottom
#property indicator_buffers 2
#property indicator_plots 2

//--- input parameters
input int       Period = 50;
input int       MinVolume = 100;
input int       MinVolume2 = 50;

//--- indicator buffers
double         BollingerLower[];
double         BollingerUpper[];

//--- indicator plots
plot           BollingerLowerPlot, color=GREEN, style=DASH, linetype=2, tit[3D[K
title="Bollinger Lower", shift=1;
plot           BollingerUpperPlot, color=RED,  style=DASH, linetype=2, titl[4D[K
title="Bollinger Upper", shift=1;

// Indicator Bollinger Bands
int            iBollingerBars = iBollinger(NULL, PERIOD_H1, Period, 2, 2, c[1D[K
clrRed, clrGreen, BollingerLowerPlot);
int            iBollingerBars2 = iBollinger(NULL, PERIOD_H1, Period, 2, 2, [K
clrRed, clrGreen, BollingerUpperPlot);
```

### MT5 Volatility Strategy (Example)
```mql5
//+-------------------------------------------------------------------
//|                                                      MT5_Volatility_EA.[18D[K
MT5_Volatility_EA.mq5
//+-------------------------------------------------------------------
#property indicator_chart_position Bottom
#property indicator_buffers 2
#property indicator_plots 2

//--- input parameters
input int       Period = 50;
input int       MinVolume = 100;
input int       MinVolume2 = 50;

//--- indicator buffers
double         BollingerLower[];
double         BollingerUpper[];

//--- indicator plots
plot           BollingerLowerPlot, color=GREEN, style=DASH, linetype=2, tit[3D[K
title="Bollinger Lower", shift=1;
plot           BollingerUpperPlot, color=RED,  style=DASH, linetype=2, titl[4D[K
title="Bollinger Upper", shift=1;

// Indicator Bollinger Bands
int            iBollingerBars = iBollinger(NULL, PERIOD_H1, Period, 2, 2, c[1D[K
clrRed, clrGreen, BollingerLowerPlot);
int            iBollingerBars2 = iBollinger(NULL, PERIOD_H1, Period, 2, 2, [K
clrRed, clrGreen, BollingerUpperPlot);
```
```

```

