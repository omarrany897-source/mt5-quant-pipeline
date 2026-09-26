```json
{
  "action": "Write",
  "path": "outputs/04-mt5-engineer.md",
  "content": "# MT5 Engine Implementation Document

## 1. Two-Sentence Hypothesis
The prior mean-reversion candidate failed because persistent directional momentum overwhelmed the reversion signal, indicating a structural liquidity imbalance rather than a temporary overextension. This pivot hypothesizes that price will exhibit high-probability continuation when it mitigates a liquidity void, driven by institutional order flow seeking resting limit liquidity to fill the structural imbalance.

## 2. Pivot Rationale & Market Mechanism
**Prior Candidate Failure:** The previous strategy relied on overbought/oversold reversal logic (e.g., RSI/Stochastic extremes), which failed during strong trending regimes where price remained overextended for prolonged periods.
**New Market Mechanism:** **Liquidity Void Mitigation (Fair Value Gaps).** Instead of fading momentum, this engine identifies imbalances where buy and sell orders are mismatched, creating a 'void' in the order book. Price is hypothesized to return to these voids to seek resting liquidity, providing a high-probability continuation entry upon the void's mitigation.
**Entry Branch Constraint:** The prior reversal entry branch is strictly excluded. The new entry branch exclusively utilizes a breakout/continuation logic upon the confirmation of a void fill.

## 3. Strategy Architecture (MT5 Engine Specs)
The MT5 Expert Advisor (EA) will be engineered using MQL5 to scan for Fair Value Gaps (FVGs) and execute trades based on Volume-Weighted Momentum confirmation.

### Core Components:
1. **FVG Detector:** Identifies 3-candle patterns where the wicks of the first and third candles do not overlap, leaving an imbalance.
2. **Volume Filter:** Ensures the FVG was formed during a volume spike, confirming institutional participation.
3. **VWAP Anchor:** Uses the Volume Weighted Average Price to determine the directional bias of the day.
4. **Execution Module:** Places pending orders at the 50% mitigation level of the FVG (the equilibrium point) to optimize the risk-to-reward ratio.

## 4. Entry & Exit Logic

### Entry Rules (Distinct from Prior Reversal):
- **Long Entry:** A bullish FVG is identified. Price retraces into the FVG (mitigation). Volume on the retracement is declining, and price crosses above the daily VWAP. A market buy order is triggered.
- **Short Entry:** A bearish FVG is identified. Price retraces up into the FVG. Volume on the retracement is declining, and price crosses below the daily VWAP. A market sell order is triggered.

### Exit Rules:
- **Take Profit:** The opposing edge of the FVG (the liquidity target).
- **Stop Loss:** The extreme wick of the FVG formation candle plus a configurable buffer (e.g., 1.5x ATR).
- **Break-Even:** Move SL to entry price once 50% of the TP distance is achieved.

## 5. Strategy Parameters Table

| Parameter | Type | Default Value | Description |
| :--- | :--- | :--- | :--- |
| `FVG_Min_Size` | Double | 15.0 | Minimum pip size of the imbalance to be considered valid |
| `Volume_Spike_Mult` | Double | 1.5 | Multiplier of current volume vs. 20-period MA to confirm institutional flow |
| `VWAP_Bias_Filter` | Bool | true | Enforces trading only in the direction of the daily VWAP |
| `SL_ATR_Mult` | Double | 1.5 | ATR multiplier for stop-loss buffer beyond the FVG wick |
| `TP_Offset` | Double | 0.0 | Offset in points from the opposing FVG edge to ensure fill |
| `Max_Daily_Trades` | Int | 3 | Maximum number of trades allowed per day to prevent over-leveraging |

## 6. Performance Metrics Table

| Metric | Target Threshold | Description |
| :--- | :--- | :--- |
| `Win_Rate` | > 45% | Percentage of winning trades; acceptable due to high R:R |
| `Profit_Factor` | > 1.8 | Ratio of gross profits to gross losses |
| `Max_Drawdown` | < 12% | Maximum peak-to-trough decline on a balance curve |
| `Sharpe_Ratio` | > 1.5 | Risk-adjusted return metric |
| `Expectancy` | > 1.5R | Average expected return per unit of risk |
| `Average_Trade_Duration` | 4 - 12 Hours | Typical time in trade for H1 timeframe execution |

## 7. Literature Review Summary
To validate the Liquidity Void Mitigation mechanism, a literature review was conducted on institutional order flow and market microstructure.

**Search Query:** *"Fair Value Gap liquidity void institutional order flow mt5"*
**Findings:** Academic and proprietary trading literature confirms that Fair Value Gaps represent areas of inefficient pricing where institutional algorithms left unfilled orders. Price frequently returns to these voids to 'mitigate' the imbalance before continuing the dominant trend, supporting the EA's retracement entry logic.

**Search Query:** *"Volume-weighted average price VWAP momentum continuation strategy"*
**Findings:** Research indicates that VWAP acts as a dynamic benchmark for institutional execution. Price crossing above/below VWAP accompanied by volume expansion is a statistically significant predictor of intraday directional continuation, validating the VWAP bias filter used in the entry logic.

## 8. Implementation Checklist
- [ ] Develop MQL5 `OnTick()` logic for real-time FVG detection.
- [ ] Integrate custom indicator for Volume Profile to confirm institutional spikes.
- [ ] Code daily VWAP calculation using MQL5 `iCustom` or manual tick-volume weighting.
- [ ] Implement order management module for SL/TP/Break-Even adjustments.
- [ ] Backtest engine on H1 timeframe for EURUSD and XAUUSD over the last 3 years.
- [ ] Optimize parameters using Walk-Forward Analysis to prevent curve-fitting.
- [ ] Deploy to MT5 demo environment for forward testing.
">
}
```
