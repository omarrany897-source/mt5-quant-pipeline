# MT5 Quantitative Research Pipeline

Fully automated, four-agent algorithmic trading research pipeline for MetaTrader 5. Driven by Gemini CLI via GitHub Actions.

## Quick Start

```bash
# 1. Create GitHub repo and push
gh repo create mt5-quant-pipeline --public --source=. --push

# 2. Add your Gemini API key
gh secret set GEMINI_API_KEY

# 3. Trigger a full pipeline run
gh workflow run pipeline-orchestrator.yml
```

## Final Output

After each run, the consolidated deliverable is stored at:

**`outputs/final/latest.md`**

See [EXECUTION_GUIDE.md](./EXECUTION_GUIDE.md) for full automation details.
