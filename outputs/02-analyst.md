```md
# Analyst
## Systematic Trading Analyst & Market Microstructure Specialist

## Objective
Triage Agent 1's Candidate Strategy Set down to 5-10 mechanically automatab[9D[K
automatable, zero-discretion MT5 candidates.

## Input
Read `outputs/01-researcher.md`. Do not invent new raw statistical data.

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

## Autonomous Error Recovery & Auto-Fix Protocol
If execution encounters a build error, runtime exception, script failure, s[1D[K
syntax bug, or missing dependency:
1. Read the full error log, line number, and relevant code context.
2. Isolate the root cause rather than masking the failure.
3. Apply a direct source, workflow, or configuration fix.
4. Commit with `fix(auto-heal): resolve [brief error description] and re-tr[5D[K
re-trigger`.
5. Re-run the failed check or phase to verify the fix.
6. Allow no more than 3 fix iterations before escalating with a clear error[5D[K
error report.

## Triage & Evaluation Protocol
1. **MT5 Feasibility Filter**: Rate implementation complexity as Very Easy,[5D[K
Easy, Easy, Moderate, Difficult, or Very Difficult. Prioritize retail imple[5D[K
implementability (standard OHLCV/tick data, standard indicators). Reject ca[2D[K
candidates requiring proprietary order flow or expensive alternative data.
2. **Zero-Discretion Audit**: Reject or heavily penalize strategies requiri[7D[K
requiring visual interpretation (e.g., "looks like a strong trend", "clean [K
market structure", "beautiful candle").
3. **Edge Decomposition**: Where exactly does the return come from? Decompo[7D[K
Decompose by session, weekday, volatility regime, direction, and trade dura[4D[K
duration. Search for hidden edges (e.g., momentum conditional on volatility[10D[K
volatility).
4. **Remove Unnecessary Complexity**: Deconstruct edges to avoid indicator [K
stacking (No MACD + RSI + EMA + FVG bloat). Build profiles as:
   - Version A: Core signal only.
   - Version B: Core signal + volatility filter.
   - Version C: Core signal + volatility + execution filter.

## Deliverables
1. **Mechanically Implementable Candidates**: 5-10 strongest candidates wit[3D[K
with exact rules, data required, basic rules, and expected trading frequenc[8D[K
frequency.
2. **Failure Analysis (per candidate)**: What could make this strategy stop[4D[K
stop working? (Crowding, spread changes, regime dependence, post-publicatio[15D[K
post-publication decay).

## Candidate Strategy Set
### Candidate 1: Volume Filter (Very Easy)
- **Data Required**: OHLCV, Volume.
- **Rule**: Only enter trades when volume exceeds a certain threshold.
- **Expected Trading Frequency**: High, around 1-2 trades per day.

### Candidate 2: Bollinger Band Breakout (Moderate)
- **Data Required**: OHLCV, Bollinger Bands.
- **Rule**: Only enter trades when the price breaks above/below the upper/l[7D[K
upper/lower Bollinger Band.
- **Expected Trading Frequency**: Moderate, around 2-5 trades per week.

### Candidate 3: Moving Average Crossover (Easy)
- **Data Required**: OHLCV, Short-term Moving Average, Long-term Moving Ave[3D[K
Average.
- **Rule**: Only enter trades when the short-term MA crosses above/below th[2D[K
the long-term MA.
- **Expected Trading Frequency**: Low to moderate, around 5-10 trades per m[1D[K
month.

### Candidate 4: Relative Strength Index (RSI) Filter (Moderate)
- **Data Required**: OHLCV, RSI.
- **Rule**: Only enter trades when the RSI crosses above/below a certain th[2D[K
threshold.
- **Expected Trading Frequency**: Moderate to high, around 10-20 trades per[3D[K
per month.

### Candidate 5: MACD Filter (Moderate)
- **Data Required**: OHLCV, MACD.
- **Rule**: Only enter trades when the MACD crosses above/below the signal [K
line.
- **Expected Trading Frequency**: Moderate to high, around 10-20 trades per[3D[K
per month.

### Candidate 6: Momentum with Volatility Filter (Moderate)
- **Data Required**: OHLCV, RSI, Volatility.
- **Rule**: Only enter trades when the RSI is above a certain level and the[3D[K
the volatility is within a certain range.
- **Expected Trading Frequency**: Moderate, around 5-10 trades per month.

### Candidate 7: Mean Reversion with Bollinger Band Filter (Moderate)
- **Data Required**: OHLCV, Bollinger Bands, Mean Reversion Indicator.
- **Rule**: Only enter trades when the price is outside the Bollinger Bands[5D[K
Bands and the Mean Reversion Indicator is above a certain level.
- **Expected Trading Frequency**: Moderate, around 5-10 trades per month.

### Candidate 8: Volume with Bollinger Band Filter (Moderate)
- **Data Required**: OHLCV, Volume, Bollinger Bands.
- **Rule**: Only enter trades when the volume exceeds a certain threshold a[1D[K
and the price is outside the Bollinger Bands.
- **Expected Trading Frequency**: Moderate, around 5-10 trades per month.

### Candidate 9: Volatility Filter with MACD (Moderate)
- **Data Required**: OHLCV, Volatility, MACD.
- **Rule**: Only enter trades when the volatility is within a certain range[5D[K
range and the MACD is above a certain level.
- **Expected Trading Frequency**: Moderate, around 5-10 trades per month.

### Candidate 10: Mean Reversion with Volume Filter (Moderate)
- **Data Required**: OHLCV, Volume, Mean Reversion Indicator.
- **Rule**: Only enter trades when the volume exceeds a certain threshold a[1D[K
and the Mean Reversion Indicator is above a certain level.
- **Expected Trading Frequency**: Moderate, around 5-10 trades per month.
```

