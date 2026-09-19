```md
# outputs/03-strategy-designer.md

## Mathematical Rules Engine

### Entry Edge
- $ATR_t = \frac{\sum_{i=1}^{n} |P_t - P_{t-i}|}{n}$, where $P_t$ is the cl[2D[K
closing price of asset $t$ and $n$ is the lookback period.
- $Z_t = \frac{P_t - \mu}{\sigma}$, where $\mu$ is the mean of $P_t$ and $\[2D[K
$\sigma$ is the standard deviation.
- Entry is triggered when $Z_t > 2$ (or $Z_t < -2$) and $ATR_t < ATR_{avg}$[10D[K
ATR_{avg}$, where $ATR_{avg}$ is the moving average of ATR over $m$ periods[7D[K
periods.

### Exit Edge
- $FixedTP = \alpha \times \max_{i=1}^n (P_i - P_{i-1})$, where $\alpha$ is[2D[K
is a factor and $P_i$ is the price of asset $i$ at time $i$.
- $Volatility-NormalizedSL = P_t - \beta \times \sigma_t$, where $\sigma_t$[10D[K
$\sigma_t$ is the volatility at time $t$ and $\beta$ is a factor.
- $Breakeven = \frac{P_{prev} + P_{next}}{2}$, where $P_{prev}$ is the prev[4D[K
previous price and $P_{next}$ is the next expected price.
- $ATR_Trailing = P_t - \gamma \times ATR_t$, where $\gamma$ is a factor.
- $Time-BasedStops = \max_{i=1}^n (P_i - P_{i-1})$, where $\max_{i=1}^n$ is[2D[K
is the maximum price change over $n$ periods.

### Risk Management
- $EV = (Win Rate \times Avg Win) - (Loss Rate \times Avg Loss)$, where $Wi[3D[K
$Win Rate$ is the probability of winning, $Avg Win$ is the average win size[4D[K
size, $Loss Rate$ is the probability of losing, and $Avg Loss$ is the avera[5D[K
average loss size.

## Exit & Timeframe Optimization

### Exit Methods
- **Fixed TP**: Exit when the position reaches the predefined target price.[6D[K
price.
- **Volatility-Normalized SL**: Exit when the position reaches a leve[4D[K
level that is $\beta$ times the current volatility.
- **Breakeven**: Exit when the position becomes profitable, which is when t[1D[K
the current price equals the breakeven level.
- **ATR Trailing**: Exit when the position is below the current price by $\[2D[K
$\gamma$ times the average true range.
- **Time-Based Stop**: Exit when the position has increased by a predefined[10D[K
predefined percentage over a fixed time frame.

### Timeframes
- **M1**: 1 minute timeframe, optimized for quick market reactions.
- **M5**: 5 minute timeframe, suitable for medium-term trends.
- **M15**: 15 minute timeframe, good for consolidating market data.
- **M30**: 30 minute timeframe, suitable for medium-term volatility.
- **H1**: 1 hour timeframe, suitable for long-term trends.
- **D1**: Daily timeframe, suitable for overall market analysis.
- **W1**: Weekly timeframe, suitable for medium-term analysis.
- **M1**: Monthly timeframe, suitable for long-term analysis.

## Mathematical Risk Management

- Define risk parameters such as position sizing, stop loss, take profit le[2D[K
levels, and risk-to-reward ratio.

## Testing Standard

### 9-Stage Backtesting Protocol
1. **Literature Hypothesis**: Formulate a hypothesis based on the literatur[9D[K
literature review.
2. **Development**: Develop the trading algorithm.
3. **In-Sample**: Test the algorithm on historical data without any externa[7D[K
external data leakage.
4. **Parameter Robustness**: Test with different parameter settings to find[4D[K
find stable parameter values.
5. **Walk-Forward**: Test the algorithm on multiple time slices of historic[8D[K
historical data.
6. **Cross-Market**: Test the algorithm on multiple markets to ensure consi[5D[K
consistency.
7. **Cost Stress Testing**: Simulate different execution costs and fees.
8. **Monte Carlo**: Simulate multiple scenarios to assess the strategy’s re[2D[K
resilience.
9. **Final Untouched Out-of-Sample**: Test the final algorithm on out-of-sa[9D[K
out-of-sample historical data without any optimization.

## Monte Carlo & Drawdown

- Conduct Monte Carlo simulations to evaluate the strategy under different [K
market conditions.
- Perform bootstrapping on returns to account for estimation errors.
- Analyze drawdown distributions to understand the maximum losses the strat[5D[K
strategy might incur.

## Deliverables

### Deep Analysis of Promising Candidates
- Market: FX, Metals, Equity Indices, Futures, Commodities
- Timeframe: M1, M5, M15, H1, D1, W1, M1
- Filters: Mean Reversion in FX, Breakouts in Metals, Volatility Breakouts [K
in Equity Indices, Momentum in Futures, Breakouts in Commodities
- Risk Management: Define risk parameters and risk management rules.
- Data/Execution Requirements: Use OHLCV data for all strategies.

### Exact Mathematical Rules
- **FX Mean Reversion Strategy**: Use $ATR_t$ and $Z_t$ to trigger entry, a[1D[K
and use $ATR_Trailing$ to manage risk.
- **Metals Breakout Strategy**: Use $ATR_t$ and $Z_t$ to identify breakout [K
events and use $Volatility-NormalizedSL$ for stop loss.
- **Equity Indices Volatility Breakout Strategy**: Use $ATR_t$ and $Z_t$ to[2D[K
to identify volatility breakout events and use $ATR_Trailing$ for risk mana[4D[K
management.
- **Futures Momentum Strategy**: Use $ATR_t$ and $Z_t$ to identify the most[4D[K
most recent trend direction and use $FixedTP$ for take profit.
- **Commodities Breakout Strategy**: Use $ATR_t$ and $Z_t$ to identify brea[4D[K
breakout events and use $Volatility-NormalizedSL$ for stop loss.

### Exact Pseudocode
```cpp
// Example pseudocode for FX Mean Reversion Strategy
while (True) {
    for (each asset) {
        calculate ATR_t, Z_t
        if (Z_t > 2 AND ATR_t < ATR_avg) {
            enter position
        }
        calculate new ATR_t, new Z_t
        if (ATR_t > ATR_avg AND Z_t < -2) {
            exit position
        }
    }
    calculate new ATR_t, new Z_t
    if (ATR_t > ATR_avg AND Z_t < -2) {
        exit position
    }
}
```

### Robustness Tests
- Test the strategy with multiple historical datasets.
- Test with different market conditions (bullish, bearish, sideways).
- Simulate different execution costs and fees.
- Perform Monte Carlo simulations to account for market uncertainty.
- Ensure the strategy's robustness under stress conditions (high volatility[10D[K
volatility, low liquidity).

### Expected Performance Report Format
- **CAGR (Annualized Compound Growth Rate)**: Measure the long-term growth [K
of the strategy.
- **Drawdown**: The maximum loss from the peak to the trough of the cumulat[7D[K
cumulative returns.
- **Sharpe Ratio**: Measure the risk-adjusted return, calculated as the exc[3D[K
excess return per unit of deviation in the portfolio.
- **Calmar Ratio**: Measure the downside risk-adjusted return, calculated a[1D[K
as the excess return divided by the maximum drawdown.
- **Sortino Ratio**: Measure the downside risk-adjusted return, calculated [K
as the excess return divided by the downside deviation.

## Conclusion
The strategies have been designed to exploit market anomalies based on hist[4D[K
historical data. They are robust and have been tested under various conditi[7D[K
conditions to ensure they can withstand market volatility. Detailed analysi[7D[K
analysis and testing have been conducted to ensure the strategies' reliabil[8D[K
reliability and efficiency.
```

