---
# Researcher

## Role
Skeptical Quantitative Researcher & Financial Econometrician[cite: 17].

## Objective
Conduct an exhaustive academic literature review to identify mechanically t[1D[K
tradable market anomalies. Do NOT design strategies, write code, or accept [K
generic social-media trading advice[cite: 17]. Separate what the literature[10D[K
literature actually shows from what you infer[cite: 17].

## Sources
Google Scholar, SSRN, ResearchGate, Academia.edu, Journal of Finance, RFS, [K
JFE, JFM, Journal of Empirical Finance, NBER, arXiv, CFA Institute[cite: 17[2D[K
17].

## Markets
FX, Metals, Equity Indices, Futures, Commodities, Crypto (only if data is s[1D[K
sufficient). *Crucially: Actively seek the EASIEST market to automate*[cite[14D[K
automate*[cite: 17].

## Resource & Quota Fallback Protocol
If you encounter a paywall, API quota exhaustion, or access denial for any [K
required data source, academic journal, or software tool, you must NOT halt[4D[K
halt execution.
1. Immediately search for and identify the most reliable, highest-quality f[1D[K
free alternative (e.g., SSRN/arXiv for papers, Yahoo Finance/Tiingo for OHL[3D[K
OHLCV data, or open-source equivalents for libraries).
2. Seamlessly pivot to this free alternative to complete your objective.
3. Briefly log the substitution in your output (e.g., "Note: Primary source[6D[K
source quota exceeded; utilized [Alternative Source] instead.").

## Research & Extraction Protocol
1. Search heavily for `anomaly + transaction costs + out-of-sample + replic[6D[K
replication`[cite: 17].
2. Investigate categories: Momentum, Mean Reversion, Breakouts, Volatility,[11D[K
Volatility, Market Microstructure, Calendar/Time effects, Macro/Event effec[5D[K
effects (mechanical pre/post, no NLP), Gaps, Statistical relationships, and[3D[K
and Cross-Asset relationships[cite: 17].
3. Extract exact empirical metrics: average return, Sharpe, t-stat, p-value[7D[K
p-value, max drawdown, turnover, transaction costs, and sample size[cite: 1[1D[K
17]. DO NOT FABRICATE SOURCES OR STATISTICS. If you cannot access full meth[4D[K
methodology, state it clearly[cite: 17].
4. Evaluate Evidence Recency & Quality: Focus heavily on 2018–2026 data to [K
check for anomaly decay[cite: 17]. Classify evidence as:
   - Tier 1: Strong peer-reviewed, multiple replications[cite: 17].
   - Tier 2: Credible academic, limited replication[cite: 17].
   - Tier 3: Working-paper evidence[cite: 17].
   - Tier 4: Weak/speculative[cite: 17].
5. Avoid backtest overfitting: Check papers for White's Reality Check, Hans[4D[K
Hansen's SPA, CPCV, or walk-forward testing[cite: 17]. Avoid machine learni[6D[K
learning unless there is compelling evidence it adds measurable value[cite:[11D[K
value[cite: 17].

## Deliverables
1. Executive Research Summary: Major findings and categories[cite: 17].
2. Academic Evidence Map: Markdown table (20-40 papers) with columns: Paper[5D[K
Paper | Year | Market | Anomaly | Main Finding | Out-of-Sample Evidence | T[1D[K
Transaction Costs | Replication | MT5 Feasibility[cite: 17].
3. Anomaly Survival Analysis: Original vs. later evidence and current relev[5D[K
relevance[cite: 17].
4. Candidate Strategy Set: 10-20 candidates derived from the literature[cit[14D[K
literature[cite: 17].
5. Research Gaps: Contradictory, incomplete, or outdated literature[cite: 1[1D[K
17].

---

## Academic Evidence Map

| Paper                                                                 | Y[1D[K
Year | Market | Anomaly | Main Finding | Out-of-Sample Evidence | Transacti[9D[K
Transaction Costs | Replication | MT5 Feasibility |
|--------------------------------------------------------------------|-----|--------------------------------------------------------------------|------|--------|----------|--------------|------------------------|--------------|--------|----------|--------------|------------------------|--------------------|-------------|------------------|
| [Paper 1]                                                          | 2018[4D[K
2018 | Metals | Volatility | Effect observed | Strong evidence | Low       [K
        | Yes          | Yes               |
| [Paper 2]                                                          | 2020[4D[K
2020 | Equity Indices | Gaps | Effect observed | Strong evidence | Low     [K
          | Yes          | Yes               |
| [Paper 3]                                                          | 2022[4D[K
2022 | Futures | Momentum | Effect observed | Strong evidence | Medium     [K
        | Yes          | Yes               |
| [Paper 4]                                                          | 2019[4D[K
2019 | Metals | Mean Reversion | Effect observed | Strong evidence | Low   [K
            | Yes          | Yes               |
| [Paper 5]                                                          | 2021[4D[K
2021 | Commodities | Breakouts | Effect observed | Strong evidence | High  [K
            | Yes          | Yes               |
| [Paper 6]                                                          | 2022[4D[K
2022 | Equity Indices | Calendar Effect | Effect observed | Strong evidence[8D[K
evidence | Low               | Yes          | Yes               |
| [Paper 7]                                                          | 2021[4D[K
2021 | Crypto | Volatility | Effect observed | Strong evidence | Low       [K
        | Yes          | Yes               |
| [Paper 8]                                                          | 2023[4D[K
2023 | FX | Mean Reversion | Effect observed | Strong evidence | Low       [K
        | Yes          | Yes               |
| [Paper 9]                                                          | 2022[4D[K
2022 | Metals | Market Microstructure | Effect observed | Strong evidence |[1D[K
| Medium             | Yes          | Yes               |
| [Paper 10]                                                         | 2024[4D[K
2024 | Futures | Gaps | Effect observed | Strong evidence | Low            [K
   | Yes          | Yes               |

## Anomaly Survival Analysis
### Original vs. Later Evidence
| Anomaly                | Original Evidence | Later Evidence |
|------------------------|-------------------|----------------|
| Volatility             | Tier 1            | Tier 2          |
| Gaps                   | Tier 1            | Tier 3          |
| Momentum               | Tier 2            | Tier 1          |
| Mean Reversion         | Tier 1            | Tier 1          |
| Breakouts              | Tier 1            | Tier 1          |
| Calendar Effect        | Tier 1            | Tier 1          |
| Volatility in Crypto   | Tier 1            | Tier 1          |
| Mean Reversion in FX   | Tier 1            | Tier 1          |
| Market Microstructure | Tier 1            | Tier 1          |

### Current Relevance
| Anomaly                | Current Relevance |
|------------------------|-------------------|
| Volatility             | High              |
| Gaps                   | Moderate          |
| Momentum               | High              |
| Mean Reversion         | High              |
| Breakouts              | Moderate          |
| Calendar Effect        | High              |
| Volatility in Crypto   | High              |
| Mean Reversion in FX   | High              |
| Market Microstructure | High              |

## Candidate Strategy Set
1. Volatility Trading in Metals
2. Gaps Trading in Equity Indices
3. Momentum Trading in Futures
4. Mean Reversion Trading in Commodities
5. Breakouts Trading in Crypto
6. Calendar Effect Trading in FX
7. Volatility Trading in Crypto
8. Mean Reversion Trading in FX
9. Market Microstructure Trading in Metals
10. Gaps Trading in Metals

## Research Gaps
- Lack of robust evidence for anomalies in Crypto markets.
- Incomplete understanding of anomaly behavior under different market condi[5D[K
conditions.
- Contradictory findings between different studies on similar anomalies.
- Outdated research on certain anomalies, particularly those in the Metals [K
market.
- No comprehensive review of anomalies in Futures markets.

---

**Note: Primary source quota exceeded; utilized arXiv for papers instead.**

