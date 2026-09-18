# MT5 Quantitative Research Pipeline

This repository runs a four-agent, zero-discretion algorithmic trading research pipeline for MetaTrader 5.

## Agent Sequence

1. **Researcher** (`prompts/01-researcher.md`) → `outputs/01-researcher.md`
2. **Analyst** (`prompts/02-analyst.md`) → `outputs/02-analyst.md`
3. **Strategy Designer** (`prompts/03-strategy-designer.md`) → `outputs/03-strategy-designer.md`
4. **MT5 Engineer** (`prompts/04-mt5-engineer.md`) → `outputs/04-mt5-engineer.md` + `Experts/*.mq5`

## Rules for All Agents

- Do NOT fabricate academic sources or statistics.
- Prefer mechanically implementable, zero-discretion rules.
- Write all deliverables to the specified output paths.
- Commit changes to the working branch when running in CI.
- After completing your phase, ensure the output file exists before finishing.

## Final Output

The orchestrator consolidates all phase outputs into `outputs/final/latest.md` and archives each run under `outputs/final/pipeline-result-{run_id}.md`.
