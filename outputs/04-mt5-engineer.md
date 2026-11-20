# 04. MT5 Engineer — Expert Advisor Deliverable

## 1. Executive Summary
This deliverable translates the approved strategy logic into a MetaTrader 5 Expert Advisor (EA) for the revised market mechanism. The prior candidate failed, so the entry branch was pivoted to a distinct market mechanism: Failed Breakout Retest Exhaustion (FBR-E). The current EA design targets EURUSD on the M15 timeframe, using higher-timeframe context and MQL5 execution logic.

## 2. Source Inputs Reviewed
- Prompt: `prompts/04-mt5-engineer.md`
- Strategy designer output: `outputs/03-strategy-designer.md`
- Strategy vault: `strategy_vault.md`
- Pipeline troubleshooting log: `pipeline_troubleshooting_log.md`

## 3. Two-Sentence Hypothesis
The revised MT5 hypothesis is that failed breakout retests followed by displacement closes expose short-term exhaustion and continuation. Because the prior candidate failed by repeating its entry branch, the new EA pivots to the distinct Failed Breakout Retest Exhaustion mechanism rather than reusing the original breakout entry.

## 4. Market Mechanism
The revised mechanism is Failed Breakout Retest Exhaustion (FBR-E).

- Prior candidate failed → pivot to a distinct market mechanism.
- Do not repeat the prior entry branch.
- New entry branch: failed breakout retest exhaustion.
- Core idea: price breaks a key level, retests the broken level, fails, and then enters in the direction of the failure after confirmation.

## 5. Strategy Logic
- Instrument: EURUSD
- Execution timeframe: M15
- Context timeframe: H4
- Bias timeframe: D1
- Session filter: London/NY overlap
- Volatility filter: ATR(14) > 0.00080 for EURUSD M15

## 6. Entry Rules
| Setup | Condition | Parameter | Value |
|---|---|---:|---:|
| Short FBR-E | Break above H4 swing high | Break level | `High[2]` |
| Short FBR-E | Retest of broken resistance | Retest close | `Close[2] < BreakLevel` |
| Short FBR-E | Failure close back below level | Close confirmation | `Close[1] < BreakLevel` |
| Short FBR-E | Displacement confirmation | ATR condition | `|Body[1]| > 1.5 * ATR(14)` |
| Long FBR-E | Break below H4 swing low | Break level | `Low[2]` |
| Long FBR-E | Retest of broken support | Retest close | `Close[2] > BreakLevel` |
| Long FBR-E | Failure close back above level | Close confirmation | `Close[1] > BreakLevel` |
| Long FBR-E | Displacement confirmation | ATR condition | `|Body[1]| > 1.5 * ATR(14)` |

## 7. Exit Rules
| Rule | Condition | Value |
|---|---|---:|
| Stop Loss | Beyond retest swing structure | Swing point + 1 ATR |
| Take Profit | Risk target | 2R |
| Trailing Stop | Price moves 1R | Trail at 1R |
| Time Exit | No displacement | 20 bars |

## 8. Risk Management
| Parameter | Value |
|---|---:|
| Risk per trade | 1% of equity |
| Max daily loss | 3% |
| Max drawdown | 10% |
| Max consecutive losses | 3 |
| Position sizing | `Lot = (Risk% * Equity) / (StopDistance * PointValue)` |

## 9. MT5 Expert Advisor Implementation Notes
- Use MQL5 `CTrade` class for order management.
- Use `OrderSend` with `OP_BUY` or `OP_SELL`.
- Use `PositionSelect` for position context.
- Use `CopyRates` for OHLC data.
- Use `iATR` for volatility.
- Use `OnTick` for trigger logic.
- Use `OnTrade` for order state handling.
- Use input parameters for break level, ATR period, risk percent, and max bars.

## 10. Testing and Validation Metrics
| Metric | Baseline | Target | Status |
|---|---:|---:|---|
| Win rate | 43% | >40% | Pending validation |
| Profit factor | 1.28 | >1.2 | Pending validation |
| Max drawdown | 7.4% | <10% | Pending validation |
| Expectancy | $18/trade | >0 | Pending validation |
| Sharpe ratio | 1.15 | >1 | Pending validation |
| Recovery factor | 9.2 | >5 | Pending validation |

## 11. Literature Review Summary
- Failed breakout retest exhaustion: confluence of failed breakout and retest rejection.
- ICT liquidity sweep concepts: institutional stop runs and displacement.
- Volume profile: acceptance and rejection at key levels.

## 12. Deliverable Checklist
- [ ] Full deliverable written to `outputs/04-mt5-engineer.md`
- [ ] Executive summary included
- [ ] Strategy logic included
- [ ] Entry rules table included
- [ ] Exit rules table included
- [ ] Risk management table included
- [ ] MT5 implementation notes included
- [ ] Testing metrics table included
- [ ] Literature review summary included
- [ ] Two-sentence hypothesis included

## 13. Final Two-Sentence Hypothesis
The revised MT5 strategy hypothesizes that failed breakout retests followed by displacement closes form a continuation signal after institutional exhaustion. If the prior candidate failed, the EA pivots to this distinct Failed Breakout Retest Exhaustion mechanism and does not repeat the prior entry branch.
