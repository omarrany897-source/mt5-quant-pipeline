---
# Strategy Design Documents

## Mathematical Rules Engine

### Entry Edge
- $ATR_t$: Average True Range at time $t$
- $Z_t$: Z-score of returns relative to mean and standard deviation
- $Return_t$: Return at time $t$

### Exit Edge
1. **Fixed TP (Target Profit):** $Return_t \times Fixed_TP \text{-factor}$
2. **Volatility-normalized SL (Stop Loss):** $Return_t \times Volatility \t[2D[K
\text{-factor}$
3. **Breakeven:** $Return_t \times Breakeven \text{-factor}$
4. **ATR Trailing:** $Return_t \times ATR \text{-factor}$
5. **Time-based Stops:** $Return_t \times Time \text{-factor}$

### Risk Management
- $EV$: Expected Value = $(Win Rate \times Avg Win) - (Loss Rate \times Avg[3D[K
Avg Loss)$

## Testing Standard

### Literature Hypothesis
Perform literature review and ensure thorough understanding of market dynam[5D[K
dynamics and statistical mechanics.

### Development
Develop initial testing environment and scripts for hypothesis testing.

### In-Sample
Run initial backtesting on a historical dataset to assess performance and i[1D[K
identify potential issues.

### Parameter Robustness
- Focus on robust parameter settings to avoid overfitting and ensure consis[6D[K
consistent performance across different market scenarios.
- Use a combination of cross-validation and out-of-sample testing to valida[6D[K
validate robustness.

### Walk-Forward
- Implement a walk-forward testing protocol to simulate real-world conditio[8D[K
conditions.
- Use historical market data and different time periods to validate the str[3D[K
strategy's performance.

### Cross-Market
- Test strategy on multiple markets and time frames to generalize the findi[5D[K
findings and improve reliability.

### Cost Stress Testing
- Simulate transaction costs and other market conditions (e.g., slippage, s[1D[K
spread) to assess the strategy's resilience.

### Monte Carlo
- Run Monte Carlo simulations to understand the strategy's risk profile and[3D[K
and potential performance under different market conditions.

### Final Untouched Out-of-Sample
- Finalize and test the strategy on out-of-sample data to ensure it can gen[3D[K
generate profits in unseen market conditions.

## Deliverables

### Deep Analysis of Promising Candidates
- **EURUSD:** Entry Edge: EMA crossover; Exit Edge: ATR Trailing. Risk Mana[4D[K
Management: EV > 0.
- **GBPUSD:** Entry Edge: RSI crossover; Exit Edge: Volatility-normalized S[1D[K
SL. Risk Management: EV > 0.
- **AUDUSD:** Entry Edge: MACD crossover; Exit Edge: Fixed TP. Risk Managem[7D[K
Management: EV > 0.

### Exact Mathematical Rules
- **EURUSD:** EMA crossover; ATR Trailing Stop; EV > 0.
- **GBPUSD:** RSI crossover; Volatility-normalized SL; EV > 0.
- **AUDUSD:** MACD crossover; Fixed TP; EV > 0.

### Exact Pseudocode
```mql5
// Expert Advisor for EURUSD
int OnInit()
{
    // Initialize indicators and settings
    // ...
    return INIT_SUCCEEDED;
}

void OnTick()
{
    if (OnInit() != INIT_SUCCEEDED)
        return;

    // Calculate ATR
    double ATR = CalculateATR();

    // Calculate Z-score
    double ZScore = CalculateZScore();

    // Check conditions for entry
    if (ZScore > ZThreshold)
    {
        // Send entry order
        SendOrder(ORDER_TYPE_BUY, SYMBOL_EURUSD, 1, ATR * 1.5, 0, 0, "Entry[6D[K
"Entry");
    }
    else if (ZScore < ZThreshold * -1)
    {
        // Send entry order
        SendOrder(ORDER_TYPE_SELL, SYMBOL_EURUSD, 1, ATR * 1.5, 0, 0, "Entr[5D[K
"Entry");
    }

    // Check conditions for exit
    if (Return_t > ReturnThreshold * 1.0)
    {
        // Send exit order
        SendOrder(ORDER_TYPE_SELL, SYMBOL_EURUSD, 1, ATR, 0, 0, "Exit");
    }
    else if (Return_t < ReturnThreshold * -1)
    {
        // Send exit order
        SendOrder(ORDER_TYPE_BUY, SYMBOL_EURUSD, 1, ATR, 0, 0, "Exit");
    }
}
```

### Robustness Tests
- Ensure robustness through cross-validation and walk-forward testing.
- Test under varying market conditions and different time frames.

### Expected Performance Report Format
- **CAGR:** Compound Annual Growth Rate
- **Sharpe:** Sharpe Ratio
- **Sortino:** Sortino Ratio
- **Calmar:** Calmar Ratio
- **Recovery factor:** Recovery Factor
- **Worst week/month:** Worst Loss in a Week or Month
- **Tail losses:** Maximum Drawdown

---

The Expert Advisor above is designed for the EURUSD market. Adjust the para[4D[K
parameters and filename accordingly for other markets and time frames.

