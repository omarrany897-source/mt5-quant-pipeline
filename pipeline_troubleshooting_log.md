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
