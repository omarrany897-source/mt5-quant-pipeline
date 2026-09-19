```markdown
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

//--- strategy logic
int OnInit(int start, int maximum_clients)
{
    if (start)
    {
        // Initialize any buffers or indicators here
    }
    return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
    // Clean up any resources here
}

int OnCalculate(const int rates_total, const int prev_calculated, const dat[3D[K
datetime &bep, const double &p)
{
    int start = prev_calculated ? prev_calculated : 0;

    for (int i = start; i < rates_total; i++)
    {
        // Calculate the next entry, stop, and take profit levels using the[3D[K
the Bollinger Bands
        double nextEntry = BBandsLower[i] < p ? BBandsLower[i] : BBandsUppe[10D[K
BBandsUpper[i];
        double nextStop = BBandsUpper[i] > p ? BBandsUpper[i] : BBandsLower[11D[K
BBandsLower[i];
        
        // Place the order at the calculated entry level
        if (nextEntry > p)
        {
            int ticket = OrderSend(Symbol(), OP_BUY, 0.1, p, 2, 0, "Momentu[8D[K
"Momentum Entry", 0, 0, 0);
            if (ticket > 0)
            {
                i++;
            }
        }

        // Update the stop and take profit levels for the next bar
        p = nextStop;
    }

    return(rates_total);
}
```

