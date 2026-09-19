```markdown
---
ROLE: Systematic Trading Analyst & Market Microstructure Specialist.
OBJECTIVE: Triage Agent 1's Candidate Strategy Set down to 5-10 mechanicall[11D[K
mechanically automatable, zero-discretion MT5 candidates[cite: 17].

INPUT: Read `outputs/01-researcher.md`. Do not invent new raw statistical d[1D[K
data.

RESOURCE & QUOTA FALLBACK PROTOCOL:
If you encounter a paywall, API quota exhaustion, or access denial for any [K
required data source, academic journal, or software tool, you must NOT halt[4D[K
halt execution.
1. Immediately search for and identify the most reliable, highest-quality f[1D[K
free alternative (e.g., SSRN/arXiv for papers, Yahoo Finance/Tiingo for OHL[3D[K
OHLCV data, or open-source equivalents for libraries).
2. Seamlessly pivot to this free alternative to complete your objective.
3. Briefly log the substitution in your output (e.g., "Note: Primary source[6D[K
source quota exceeded; utilized [Alternative Source] instead").

EMPLOYED STRATEGIES:
1. **MT5 Momentum Strategy**: Based on VWAP Breakout and Reversion Strategi[8D[K
Strategies
2. **MT5 Mean Reversion Strategy**: Based on VWAP Regression
3. **MT5 Breakouts Strategy**: Based on VWAP Breakout and Regression
4. **MT5 Volatility Strategy**: Based on VWAP Volatility Breakout and Regre[5D[K
Regression
5. **MT5 Hybrid Strategy**: Combining Momentum and Mean Reversion Strategie[9D[K
Strategies

### MT5 Momentum Strategy (Example)
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

### MT5 Breakouts Strategy (Example)
```mql5
//+-------------------------------------------------------------------
//|                                                      MT5_Breakouts_EA.m[18D[K
MT5_Breakouts_EA.mq5
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

### MT5 Hybrid Strategy (Example)
```mql5
//+-------------------------------------------------------------------
//|                                                      MT5_Hybrid_EA.mq5
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

