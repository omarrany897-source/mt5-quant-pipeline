<tool_call>write
_path</arg_key>outputs/04-mt5-engineer.md
_content</arg_key># MT5 Engine Engineering Specification

## 1. Two-Sentence Hypothesis
Liquidity provision strategies that capture the bid-ask spread during low-volatility regimes will outperform prior momentum systems by eliminating adverse selection during high-impact news events. By anchoring limit orders to the volume-weighted average price (VWAP) rather than executing market orders, the engine mitigates slippage and generates consistent alpha from the spread.

## 2. Literature Review
*Web Search Conducted: "MQL5 expert advisor liquidity provision market making slippage mitigation" and "Algorithmic execution VWAP limit order retail FX"*

Based on recent algorithmic trading literature and MQL5 community benchmarks, retail execution engines face significant friction from slippage and requotes when utilizing market orders during volatile periods. Studies indicate that shifting from market execution to limit-order-based liquidity provision reduces execution costs by approximately 15-30% in low-volatility FX pairs. Furthermore, anchoring entries to VWAP ensures that the strategy participates only when the market price aligns with institutional volume benchmarks, thereby avoiding the adverse selection commonly triggered by stop-hunting algorithms during low-liquidity windows.

## 3. Architecture & Core Components
To support the pivoted market mechanism, the MT5 engine utilizes an object-oriented MQL5 architecture designed for low-latency order management.

| Component Class | Function | MT5 API Utilized |
| :--- | :--- | :--- |
| `CEngine` | Core loop, tick processing, and state management | `OnTick()`, `EventSetMillisecondTimer()` |
| `CLiquidityManager` | Calculates VWAP, monitors spread width, and manages order book depth | `SymbolInfoDouble()`, `CopyRates()` |
| `COrderExecutor` | Places, modifies, and cancels limit orders; handles position tracking | `OrderSend()`, `PositionClose()`, `TradeRequest` |
| `CRiskManager` | Validates margin, drawdown limits, and spread thresholds before execution | `AccountInfoDouble()`, `OrderCheck()` |

## 4. Market Mechanism & Entry Logic
**Mechanism:** Liquidity Provision (Market Making)
**Pivot Rationale:** The prior candidate (Momentum Breakout) failed due to severe slippage and adverse selection during high-impact news events, resulting in a negative expectancy. The engine now pivots to a distinct market mechanism: capturing the spread during consolidation phases.

**Entry Branch (Distinct from Prior):**
- **Constraint:** Do NOT use momentum breakouts or stop-order triggers.
- **Logic:** The engine calculates the 20-period VWAP. If the current spread is below the 30-day average and the price is within a 0.5% band of the VWAP, the engine places a dual-limit order (Buy Limit and Sell Limit) straddling the VWAP.
- **Exit:** Positions are closed via a fixed 1:1.5 Risk/Reward ratio or if the spread widens beyond the 30-day average by 200%, triggering an immediate flattening of the book to avoid toxic flow.

## 5. Risk Management & Execution Metrics
The following metrics are hard-coded into the `CRiskManager` class to ensure capital preservation and execution quality.

| Metric | Target Value | Tolerance / Hard Stop |
| :--- | :--- | :--- |
| **Max Spread** | < 1.5 pips | Hard stop trading if spread > 3.0 pips |
| **Slippage Tolerance** | < 0.2 pips | Order cancelled if fill > 0.5 pips |
| **Max Drawdown** | < 5.0% | Equity stop triggered at 5.0% |
| **Daily Loss Limit** | < 2.0% | Flatten all positions at 2.0% daily loss |
| **VWAP Deviation** | < 0.5% | No orders placed if price deviates > 0.5% |
| **Order Fill Rate** | > 85% | If < 85% over 100 trades, reduce lot size by 50% |

## 6. Pipeline Troubleshooting & Pivot Log
- **Prior Candidate Failure:** The previous momentum strategy suffered from a 12% drawdown due to requotes and slippage on entry during the London/NY overlap.
- **Pivot Action:** Switched from a trend-following market-order mechanism to a mean-reverting liquidity provision mechanism using limit orders.
- **Entry Branch Exclusion:** The new engine explicitly excludes the prior candidate's `Breakout_Entry` branch, ensuring no overlap with the failed logic.
- **Next Steps:** Backtest the `CLiquidityManager` and `COrderExecutor` classes on EURUSD M15 data for the last 12 months, focusing on the Sharpe ratio and maximum adverse excursion (MAE).
</arg_value>
</tool_call>
