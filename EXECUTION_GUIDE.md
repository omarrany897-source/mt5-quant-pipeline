# Algorithmic Research Pipeline Execution Guide

This pipeline runs **fully automated** via GitHub Actions. Four sequential AI agents produce literature research, triage, mathematical specifications, and production MQL5 Expert Advisors. Final results are stored in **`outputs/final/latest.md`** and archived per run.

---

## Prerequisites

1. Push this repository to GitHub.
2. Add repository secret: **`GEMINI_API_KEY`** (from [Google AI Studio](https://aistudio.google.com/apikey)).
3. Enable GitHub Actions on the repository.

---

## Automated Mode (Recommended)

The pipeline runs end-to-end with **no manual phase triggers** required.

### Option A — One-click full run

1. Go to **Actions → Pipeline Orchestrator → Run workflow**.
2. Click **Run workflow** on the `main` branch.
3. Wait for all 4 agents to finish (~30–90 min depending on model/API).
4. Open the auto-created PR and merge to persist outputs on `main`.
5. Read the final deliverable at **`outputs/final/latest.md`**.

### Option B — Scheduled automatic runs

The orchestrator runs **every Monday at 06:00 UTC** via cron. Each run:

- Creates branch `pipeline/run-{run_id}`
- Executes Agents 1 → 2 → 3 → 4 sequentially
- Consolidates output to `outputs/final/latest.md`
- Archives to `outputs/final/pipeline-result-{run_id}.md`
- Opens a PR for review
- Uploads a 90-day GitHub Actions artifact

### Option C — Trigger from a GitHub Issue

Open an issue with:

```
@gemini-cli /run-pipeline
```

This dispatches the full orchestrator automatically.

---

## Manual Mode (Phase-by-Phase via Issues)

Trigger each phase individually by opening a GitHub Issue with the exact body text below.

### Phase 1: Literature Review (Agent 1)

**Issue Body**:

```
@gemini-cli Read prompts/01-researcher.md and execute it exactly. Conduct web searches for the literature review. Output to outputs/01-researcher.md and open a PR.
```

### Phase 2: Triage & Feasibility (Agent 2)

**Issue Body**:

```
@gemini-cli Read outputs/01-researcher.md and prompts/02-analyst.md. Execute the triage protocol. Output to outputs/02-analyst.md and open a PR.
```

### Phase 3: Math & Pseudocode (Agent 3)

**Issue Body**:

```
@gemini-cli Read outputs/02-analyst.md and prompts/03-strategy-designer.md. Formulate mathematical rules and pseudocode. Output to outputs/03-strategy-designer.md and open a PR.
```

### Phase 4: MQL5 Engineering (Agent 4)

**Issue Body**:

```
@gemini-cli Read outputs/03-strategy-designer.md and prompts/04-mt5-engineer.md. Write the .mq5 code and roadmap. Output to outputs/04-mt5-engineer.md and open a PR.
```

---

## Output Storage Map

| Location | Purpose |
|----------|---------|
| `outputs/01-researcher.md` | Agent 1 literature review |
| `outputs/02-analyst.md` | Agent 2 triage & feasibility |
| `outputs/03-strategy-designer.md` | Agent 3 math specs & pseudocode |
| `outputs/04-mt5-engineer.md` | Agent 4 engineering roadmap |
| `Experts/*.mq5` | Production Expert Advisors |
| **`outputs/final/latest.md`** | **Always-current consolidated final output** |
| `outputs/final/pipeline-result-{run_id}.md` | Archived snapshot per run |
| `pipeline/state.json` | Run status, phase tracking, history |
| GitHub Actions artifact `pipeline-final-{run_id}` | Downloadable 90-day backup |

---

## Monitoring

- **Run status:** `pipeline/state.json` → `status`, `current_phase`, `last_run_id`
- **Live logs:** GitHub Actions → Pipeline Orchestrator
- **Final answer:** `outputs/final/latest.md` after merge

---

## Directory Structure

```
prompts/                    # Agent system instructions
outputs/                    # Per-phase pipeline outputs
outputs/final/              # Consolidated final deliverables
Experts/                    # Generated MQL5 Expert Advisors
pipeline/state.json         # Automation state tracker
scripts/                    # Consolidation & utility scripts
.github/workflows/          # GitHub Actions automation
GEMINI.md                   # Global instructions for Gemini CLI
```
