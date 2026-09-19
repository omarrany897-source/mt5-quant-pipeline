# Strategy Success Vault

This vault contains only strategies that pass the promotion gate:

- Profit factor greater than 1.30
- Sharpe ratio greater than 1.20
- Positive expectancy
- At least 100 trades per active symbol per year
- Out-of-sample validation completed

No strategy has passed this gate yet. EURUSD_1, EURUSD_2, and EURUSD_3 are
dead ends and must not be recorded as successes.

## Promotion protocol

For every future successful EA, record its exact entry/exit mathematics,
timeframe, dynamic parameters, risk model, market regime tag, symbols tested,
trade count, profit factor, Sharpe ratio, expectancy, and out-of-sample dates.
Before generating a new EA, Phase 4 must read this file and explicitly choose
one of: transfer the DNA to another asset, combine two proven concepts, or
mutate the exits/risk model.
