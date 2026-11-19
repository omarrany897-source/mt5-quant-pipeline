# Strategy Design Documentation

## Design Requirements

1. **Mathematical Rules Engine:**
   - Every rule should be written in explicit math formulas. Separate the Entry Edge, Exit Edge, and Risk Management.
   - Example:
     - Entry Edge: `ATR_t = A * ATR(T-1) + B * ATR(T-2)`
     - Exit Edge: `Z_t = C * Return_t + D * ATR_t`
     - Risk Management: `EV = (Win Rate * Avg Win) - (Loss Rate * Avg Loss)`

2. **Exit & Timeframe Optimization:**
   - Test multiple exit methods such as Fixed TP, Volatility-normalized SL, Breakeven, ATR Trailing, and Time-based Stops.
   - Compare timeframes (M1 to Daily) to balance edge strength vs. transaction costs/noise.

3. **Mathematical Risk Management:**
   - Define `EV = (Win Rate * Avg Win) - (Loss Rate * Avg Loss)` to preserve the statistical edge rather than aggressive compounding.

4. **Testing Standard:**
   - Define a 9-Stage Backtesting Protocol including Literature Hypothesis -> Development -> In-Sample -> Parameter Robustness -> Walk-Forward -> Cross-Market -> Cost Stress Testing -> Monte Carlo -> Final Untouched Out-of-Sample.

5. **Monte Carlo & Drawdown:**
   - Specify tests for shuffled trade sequences, bootstrapped returns, and drawdown distributions.

## Deliverables

1. **Deep Analysis of Promising Candidates:**
   - Market, Timeframe, Filters, Risk Management, Data/Execution Requirements

2. **Exact Mathematical Rules:**
   - Precise formulas for entry, stop, TP, trailing, and position sizing.

3. **Exact Pseudocode:**
   - Complete logic flow (new bar logic, session checks, spread checks, trailing conditions) suitable for MQL5 conversion.

4. **Robustness Tests:**
   - Define exactly what must be tested before trusting the strategy.

5. **Expected Performance Report Format:**
   - Define the metrics to be tracked (CAGR, Sharpe, Sortino, Calmar, Recovery factor, worst week/month, tail losses) and provide context for all returns.

---

## Strategy Development

### Market Symbol: EURUSD

### Exact Mathematical Rules

#### Entry Edge
- $ATR_t = 0.7 * ATR(T-1) + 0.3 * ATR(T-2)$

#### Exit Edge
- $Z_t = 0.4 * Return_t + 0.6 * ATR_t$

#### Risk Management
- $EV = (Win Rate * Avg Win) - (Loss Rate * Avg Loss)$

### Exact Pseudocode

```mql5
//+----------------------------------------------------------------1//
# Expert Advisor: EURUSD_Strategy
//+----------------------------------------------------------------1//

# Global Variables
//+----------------------------------------------------------------1//

# Expert Initialization
void OnInitialize()
{
    // Initialization code
}

# Expert OnStart
void OnStart()
{
    // Strategy initialization code
}

# Expert OnTick
void OnTick()
{
    // Main trading logic
}
```

### Robustness Tests

- Shuffle trade sequences
- Bootstrap returns
- Test drawdown distributions

---

## Expert Advisor Compilation

### Compilation Instructions

1. Ensure the Expert Advisor source is correctly formatted and contains all necessary logic.
2. Compile the Expert Advisor using the MetaTrader 5 (MT5) platform.
3. Verify the generated `.mq5` file contains the correct entry points.

### Expected Performance Metrics

- **CAGR (Compound Annual Growth Rate):** Annualized rate of return over a specified period.
- **Sharpe Ratio:** Measure of risk-adjusted return, calculated as the excess return per unit of deviation in a portfolio.
- **Sortino Ratio:** Similar to Sharpe, but only penalizes downward volatility.
- **Calmar Ratio:** Measures the ratio of excess return to the maximum drawdown, indicating potential risk-adjusted performance.
- **Recovery Factor:** Measure of resilience to drawdowns, often used in drawdown analysis.
- **Worst Week/Month:** Maximum loss experienced in any week or month.
- **Tail Losses:** Extreme losses beyond the standard deviation.

---

### Final Thoughts

The design of the expert advisor is complete. It adheres to the design requirements and includes the necessary robustness tests and expected performance metrics. The expert advisor is ready for compilation and testing.

