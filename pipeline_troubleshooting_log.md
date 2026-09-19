# Pipeline Troubleshooting Log

This ledger is read before phase 4 fallback generation. New failures must be
recorded here with the attempted approach, exact error, and root cause before
another fix is introduced.

## Phase 4 EA artifact

| Attempt | Approach | Exact result | Root cause |
|---|---|---|---|
| 1 | Treat a successful phase report as a successful EA build | `Experts/` was absent; later local-install job was skipped | The report-generation command did not guarantee an `.mq5` artifact |
| 2 | Extract fenced MQL5 blocks from the report | `ERROR: No .mq5 Expert Advisor was generated or extractable.` | Ollama returned prose without fenced MQL5 |
| 3 | Ask Ollama for code-only output to `Experts/GeneratedStrategy.mq5` | The file was not created or did not contain `OnInit`/`OnTick` | The free model did not reliably follow the output-format instruction |
| 4 | Use a smaller Ollama model | Phase 4 still reached packaging with no usable EA | Model size did not guarantee file creation or valid source |

## Pattern #1: Static Multi-Asset Cloned Trigger Failure

The EURUSD_1 optimization produced 42-44 trades on every symbol over one year,
including FX, SP500, and UKOUSD, with profit factors of 0.70-0.76 and negative
Sharpe ratios. This uniformity is evidence that the signal was not adapting to
asset price structure: the EMA crossover and fixed point stops/targets were
effectively a sparse, friction-dominated trigger. The low drawdown only shows
that the minimum-volume risk control was conservative; it does not validate the
entry edge.

Mandatory prevention rules:

1. A calendar or new-bar event may control evaluation frequency, but never be
   the entry signal by itself. Entries require price action or market structure.
2. Normalize breakout, stop, target, and filter thresholds with ATR or standard
   deviation; fixed pip/point thresholds are not portable across assets.
3. Read `SYMBOL_SPREAD` and reject entries when spread is a material fraction of
   current ATR. Enforce reward/risk >= 1.50 before sending an order.
4. M5/M15 strategies must target approximately 120-300 trades per active symbol
   per year and must report expected frequency. Identical trade counts across
   unrelated symbols are a failure signal requiring investigation.
5. The packaging and compile gates must reject source that lacks ATR/volatility,
   spread, and reward/risk logic for a new dynamic strategy.

## Current deterministic approach

The pipeline now:

1. Preserves the phase-4 report.
2. Requests a code-only MQL5 pass.
3. Validates `OnInit()` and `OnTick()`.
4. Writes a deterministic EMA-crossover EA with risk-control inputs when the
   model does not produce valid source.
5. Rejects any `.mq5` without the required EA entry points.
6. Installs and archives only after validation succeeds.

Do not replace this artifact gate with report-only success.
