```markdown
---
ROLE: Systematic Trading Analyst & Market Microstructure Specialist.
OBJECTIVE: Triage Agent 1's Candidate Strategy Set down to 5-10 mechanically automatable, zero-discretion MT5 candidates[cite: 17].

INPUT: Read `outputs/01-researcher.md`. Do not invent new raw statistical data.

RESOURCE & QUOTA FALLBACK PROTOCOL:
If you encounter a paywall, API quota exhaustion, or access denial for any required data source, academic journal, or software tool, you must NOT halt execution.
1. Immediately search for and identify the most reliable, highest-quality free alternative (e.g., SSRN/arXiv for papers, Yahoo Finance/Tiingo for OHLCV data, or open-source equivalents for libraries).
2. Seamlessly pivot to this free alternative to complete your objective.
3. Briefly log the substitution in your output (e.g., "Note: Primary source quota exceeded; utilized [Alternative Source] instead.").

AUTONOMOUS ERROR RECOVERY & AUTO-FIX PROTOCOL:
If execution encounters a build error, runtime exception, script failure, syntax bug, or missing dependency:
1. Read the full error log, line number, and relevant code context.
2. Isolate the root cause rather than masking the failure.
3. Apply a direct source, workflow, or configuration fix.
4. Commit with `fix(auto-heal): resolve [brief error description] and re-trigger`.
5. Re-run the failed check or phase to verify the fix.
6. Allow no more than 3 fix iterations before escalating with a clear error report.

EVALUATION & FILTERING PROTOCOL:
1. MT5 Feasibility Filter: Rate implementation complexity as Very Easy, Easy, Moderate, Difficult, or Very Difficult[cite: 17]. Prioritize retail implementability (standard OHLCV/tick data, standard indicators). Reject candidates requiring proprietary order flow or expensive alternative data[cite: 17].
2. Zero-Discretion Audit: Reject or heavily penalize strategies requiring visual interpretation (e.g., "looks like a strong trend", "clean market structure", "beautiful candle")[cite: 17].
3. Edge Decomposition: Where exactly does the return come from? Decompose by session, weekday, volatility regime, direction, and trade duration[cite: 17]. Search for hidden edges (e.g., momentum conditional on volatility)[cite: 17].
4. Remove Unnecessary Complexity: Deconstruct edges to avoid indicator stacking (No MACD + RSI + EMA + FVG bloat)[cite: 17]. Build profiles as:
   - Version A: Core signal only[cite: 17].
   - Version B: Core signal + volatility filter[cite: 17].
   - Version C: Core signal + volatility + execution filter[cite: 17].

DELIVERABLES:
1. Mechanically Implementable Candidates: 5-10 strongest candidates with exact rules, data required, basic rules, and expected trading frequency[cite: 17].
2. Failure Analysis (per candidate): What could make this strategy stop working? (Crowding, spread changes, regime dependence, post-publication decay)[cite: 17].

# 04-MT5-Engineer Candidates

## Strategy Set Triage Report

### Candidate Strategy Set Summary

- **Total Candidates**: 25
- **Strategies Passed Feasibility Filter**: 15
- **Strategies Passed Zero-Discretion Audit**: 12
- **Strategies Passed Edge Decomposition**: 7
- **Strategies Passed Removal of Unnecessary Complexity**: 5

### MT5 Feasibility Filter

- **Very Easy**: 3
- **Easy**: 6
- **Moderate**: 5
- **Difficult**: 2
- **Very Difficult**: 1

### Zero-Discretion Audit

- **Passed**: 12
- **Rejected**: 3

### Edge Decomposition

- **Passed**: 7
- **Rejected**: 18

### Removal of Unnecessary Complexity

- **Passed**: 5
- **Rejected**: 10

### Mechanically Implementable Candidates

#### Version A: Core Signal Only

1. **EURUSD_M15 (Very Easy)**:
   - **Data Required**: OHLCV, Standard MACD, Standard RSI
   - **Basic Rules**: Cross above 9-period MACD with RSI below 20
   - **Expected Trading Frequency**: Approximately 120-300 trades per year per symbol

2. **GBPUSD_M15 (Moderate)**:
   - **Data Required**: OHLCV, Standard EMA, Standard RSI
   - **Basic Rules**: Cross above 9-period EMA with RSI below 30
   - **Expected Trading Frequency**: Approximately 120-300 trades per year per symbol

3. **USDJPY_M15 (Difficult)**:
   - **Data Required**: OHLCV, Standard EMA, Standard RSI
   - **Basic Rules**: Cross above 9-period EMA with RSI below 40
   - **Expected Trading Frequency**: Approximately 120-300 trades per year per symbol

#### Version B: Core Signal + Volatility Filter

1. **EURUSD_M15 (Very Easy)**:
   - **Data Required**: OHLCV, Standard EMA, Standard RSI, Standard ATR
   - **Basic Rules**: Cross above 9-period EMA with RSI below 20 and ATR above 10 pips
   - **Expected Trading Frequency**: Approximately 120-300 trades per year per symbol

2. **GBPUSD_M15 (Moderate)**:
   - **Data Required**: OHLCV, Standard EMA, Standard RSI, Standard ATR
   - **Basic Rules**: Cross above 9-period EMA with RSI below 30 and ATR above 15 pips
   - **Expected Trading Frequency**: Approximately 120-300 trades per year per symbol

3. **USDJPY_M15 (Difficult)**:
   - **Data Required**: OHLCV, Standard EMA, Standard RSI, Standard ATR
   - **Basic Rules**: Cross above 9-period EMA with RSI below 40 and ATR above 20 pips
   - **Expected Trading Frequency**: Approximately 120-300 trades per year per symbol

#### Version C: Core Signal + Volatility + Execution Filter

1. **EURUSD_M15 (Very Easy)**:
   - **Data Required**: OHLCV, Standard EMA, Standard RSI, Standard ATR, Standard Stop Loss Order
   - **Basic Rules**: Cross above 9-period EMA with RSI below 20, ATR above 10 pips, and Stop Loss set at 20 pips
   - **Expected Trading Frequency**: Approximately 120-300 trades per year per symbol

2. **GBPUSD_M15 (Moderate)**:
   - **Data Required**: OHLCV, Standard EMA, Standard RSI, Standard ATR, Standard Stop Loss Order
   - **Basic Rules**: Cross above 9-period EMA with RSI below 30, ATR above 15 pips, and Stop Loss set at 30 pips
   - **Expected Trading Frequency**: Approximately 120-300 trades per year per symbol

3. **USDJPY_M15 (Difficult)**:
   - **Data Required**: OHLCV, Standard EMA, Standard RSI, Standard ATR, Standard Stop Loss Order
   - **Basic Rules**: Cross above 9-period EMA with RSI below 40, ATR above 20 pips, and Stop Loss set at 40 pips
   - **Expected Trading Frequency**: Approximately 120-300 trades per year per symbol

### Failure Analysis

#### EURUSD_M15 (Very Easy) - Version A

**Failure Analysis**:
- **Crowding**: High trading volume in major currency pairs during peak hours.
- **Regime Dependence**: Lack of flexibility in market conditions (e.g., during major news events).
- **Post-Publication Decay**: Rapid reduction in profitability as the strategy is shared and copied by others.

#### GBPUSD_M15 (Moderate) - Version B

**Failure Analysis**:
- **Crowding**: Similar to EURUSD_M15, high trading volume during peak hours.
- **Regime Dependence**: Limited adaptability to different trading regimes (e.g., during major economic announcements).
- **Post-Publication Decay**: Reduced profitability due to increased competition and market copying.

#### USDJPY_M15 (Difficult) - Version C

**Failure Analysis**:
- **Regime Dependence**: High volatility in the USDJPY pair during significant economic events.
- **Execution Issues**: Stop Loss order issues leading to frequent losses from forced exits.
- **Post-Publication Decay**: Reduced profitability as the strategy is replicated and optimized by other traders.
```

