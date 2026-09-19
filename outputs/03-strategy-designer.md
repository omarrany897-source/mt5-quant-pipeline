```markdown
# Strategy Designer

## Mathematical Rules Engine

### Entry Edge
- $ATR_t = A_{ATR} \times A_{ATR_{multiplier}}$
- $Z_t = Z_{multiplier} \times A_{Z_{multiplier}}$
- $Return_t = \frac{P_t - P_{t-1}}{P_{t-1}}$

### Exit Edge

- **Fixed TP**
  - $Exit_t = P_{t-1} \times (1 - TP_{multiplier})$
- **Volatility-normalized SL**
  - $SL_t = P_{t-1} - A_{SL} \times A_{Volatility_{multiplier}}$
- **Breakeven**
  - $Exit_t = P_{t-1} + (Return_{t-1} - A_{Breakeven})$
- **ATR Trailing**
  - $Exit_t = P_{t-1} - A_{ATR_{trailing}} \times A_{ATR_t}$
- **Time-based Stops**
  - $Exit_t = P_{t-1} - \frac{A_{Stop_{multiplier}} \times A_{Time_{multipl[16D[K
A_{Time_{multiplier}} \times A_{Volatility_{multiplier}}}{1 - A_{Stop_{mult[13D[K
A_{Stop_{multiplier}} \times A_{Time_{multiplier}} \times A_{Volatility_{mu[17D[K
A_{Volatility_{multiplier}}}$

### Risk Management

- $EV = (Win Rate \times Avg Win) - (Loss Rate \times Avg Loss)$

## Exit & Timeframe Optimization

### Timeframes
- **M1**
- **M5**
- **M15**
- **H1**
- **H4**
- **D1**

## Mathematical Risk Management

### Expected Value (EV)
- $EV = (Win Rate \times Avg Win) - (Loss Rate \times Avg Loss)$

### Robustness Tests

1. **Literature Hypothesis**
2. **Development**
3. **In-Sample**
4. **Parameter Robustness (prefer plateaus over peaks)**
5. **Walk-Forward**
6. **Cross-Market**
7. **Cost Stress Testing**
8. **Monte Carlo**
9. **Final Untouched Out-of-Sample**

## Deliverables

### Deep Analysis of Promising Candidates

1. **Market**: FX, Metals, Equity Indices, Futures, Commodities, Crypto.
2. **Timeframe**: M1 to Daily.
3. **Filters**: Mean Reversion, Breakouts, Gaps, Volatility Anomalies, Cale[4D[K
Calendar Effects, Market Microstructure, Momentum, Statistical Relationship[12D[K
Relationships, Cross-Asset Relationships, Event Effects.
4. **Risk Management**: Define specific risk management strategies for each[4D[K
each candidate.
5. **Data/Execution Requirements**: Identify the specific data sources and [K
execution strategies needed for each candidate.

### Exact Mathematical Rules

1. **Entry**:
   - $ATR_t = A_{ATR} \times A_{ATR_{multiplier}}$
   - $Z_t = Z_{multiplier} \times A_{Z_{multiplier}}$
   - $Return_t = \frac{P_t - P_{t-1}}{P_{t-1}}$
2. **Stop**:
   - **Fixed TP**: $Exit_t = P_{t-1} \times (1 - TP_{multiplier})$
   - **Volatility-normalized SL**: $SL_t = P_{t-1} - A_{SL} \times A_{Volat[8D[K
A_{Volatility_{multiplier}}$
   - **Breakeven**: $Exit_t = P_{t-1} + (Return_{t-1} - A_{Breakeven})$
   - **ATR Trailing**: $Exit_t = P_{t-1} - A_{ATR_{trailing}} \times A_{ATR[6D[K
A_{ATR_t}$
   - **Time-based Stops**: $Exit_t = P_{t-1} - \frac{A_{Stop_{multiplier}} [K
\times A_{Time_{multiplier}} \times A_{Volatility_{multiplier}}}{1 - A_{Sto[6D[K
A_{Stop_{multiplier}} \times A_{Time_{multiplier}} \times A_{Volatility_{mu[17D[K
A_{Volatility_{multiplier}}}$
3. **Risk Management**:
   - $EV = (Win Rate \times Avg Win) - (Loss Rate \times Avg Loss)$

### Remove Unnecessary Complexity

| Version A: Core Signal Only | Version B: Core Signal + Volatility Filter [K
| Version C: Core Signal + Volatility + Execution Filter |
|-------------------------------|-----------------------------------------||-------------------------------|-----------------------------------------|-----------------------------------------------------|
| [Mean Reversion in FX] | [Mean Reversion in FX + Volatility Filter] | [Me[3D[K
[Mean Reversion in FX + Volatility Filter + Execution Filter] |
| [Breakouts in Metals] | [Breakouts in Metals + Volatility Filter] | [Brea[5D[K
[Breakouts in Metals + Volatility Filter + Execution Filter] |
| [Gaps in Equity Indices] | [Gaps in Equity Indices + Volatility Filter] |[1D[K
| [Gaps in Equity Indices + Volatility Filter + Execution Filter] |
| [Volatility Anomalies in Futures] | [Volatility Anomalies in Futures + Vo[2D[K
Volatility Filter] | [Volatility Anomalies in Futures + Volatility Filter +[1D[K
+ Execution Filter] |
| [Calendar Effects in Commodities] | [Calendar Effects in Commodities + Vo[2D[K
Volatility Filter] | [Calendar Effects in Commodities + Volatility Filter +[1D[K
+ Execution Filter] |
| [Market Microstructure in Crypto] | [Market Microstructure in Crypto + Vo[2D[K
Volatility Filter] | [Market Microstructure in Crypto + Volatility Filter +[1D[K
+ Execution Filter] |
| [Momentum in FX] | [Momentum in FX + Volatility Filter] | [Momentum in FX[2D[K
FX + Volatility Filter + Execution Filter] |
| [Statistical Relationships in Metals] | [Statistical Relationships in Met[3D[K
Metals + Volatility Filter] | [Statistical Relationships in Metals + Volati[6D[K
Volatility Filter + Execution Filter] |
| [Cross-Asset Relationships in Equity Indices] | [Cross-Asset Relationship[12D[K
Relationships in Equity Indices + Volatility Filter] | [Cross-Asset Relatio[7D[K
Relationships in Equity Indices + Volatility Filter + Execution Filter] |
| [Event Effects in Crypto] | [Event Effects in Crypto + Volatility Filter][7D[K
Filter] | [Event Effects in Crypto + Volatility Filter + Execution Filter] [K
|

### Failure Analysis

1. **Market Microstructure in Crypto (Very Difficult, Very Difficult)**: St[2D[K
Strategies relying on proprietary order flow may stop working if access to [K
this data is restricted or if the market dynamics change significantly.
2. **Event Effects in Crypto (Very Difficult, Very Difficult)**: Strategies[10D[K
Strategies relying on external events may stop working if these events beco[4D[K
become less predictable or if new external events emerge.
3. **Gaps in Equity Indices (Easy)**: Strategies relying on the gap pattern[7D[K
pattern may stop working if the market exhibits low volatility, making the [K
gap pattern less likely to occur.
4. **Momentum in FX (Easy)**: Strategies relying on past momentum may stop [K
working if the market experiences a significant change in trend or if the m[1D[K
momentum indicator becomes less effective over time.
5. **Volatility Anomalies in Futures (Moderate)**: Strategies relying on vo[2D[K
volatility anomalies may stop working if the market volatility changes sign[4D[K
significantly, making the volatility pattern less effective.
6. **Statistical Relationships in Metals (Easy)**: Strategies relying on st[2D[K
statistical relationships may stop working if the correlation between metal[5D[K
metal prices and other macroeconomic factors changes.
7. **Cross-Asset Relationships in Equity Indices (Easy)**: Strategies relyi[5D[K
relying on historical correlations may stop working if the relationship bet[3D[K
between indices changes significantly.
8. **Breakouts in Metals (Easy)**: Strategies relying on breakout patterns [K
may stop working if the market experiences a significant change in trend or[2D[K
or if the breakout pattern becomes less likely to occur.
9. **Mean Reversion in FX (Very Easy)**: Strategies relying on mean reversi[7D[K
reversion may stop working if the market experiences a significant change i[1D[K
in trend or if the mean reversion indicator becomes less effective over tim[3D[K
time.
10. **Gaps in Equity Indices (Easy)**: Strategies relying on the gap patter[6D[K
pattern may stop working if the market exhibits low volatility, making the [K
gap pattern less likely to occur.
11. **Volatility Anomalies in Futures (Moderate)**: Strategies relying on v[1D[K
volatility anomalies may stop working if the market volatility changes sign[4D[K
significantly, making the volatility pattern less effective.

```

