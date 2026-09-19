```md
# Strategy Designer

## Mathematical Rules Engine

### Entry Edge
- $VolExch_t > VolThresh$ (Volume Exceeds Threshold)
- $BollingerBands_t < BollingerThresh$ (Within Bollinger Bands)
- $RSI_t > RSIThresh$ (RSI Above Threshold)
- $MACD_t > MACDLine$ (MACD Above Signal Line)

### Exit Edge
- $FixedTP_t$ (Fixed Take Profit)
- $VolExch_t < VolThresh$ (Volume Below Threshold)
- $BollingerBands_t > BollingerThresh$ (Outside Bollinger Bands)
- $RSI_t < RSIThresh$ (RSI Below Threshold)
- $MACD_t < MACDLine$ (MACD Below Signal Line)
- $ATR_t > ATRThresh$ (ATR Above Threshold)
- $ATR_t < ATRThresh$ (ATR Below Threshold)
- $Volatility_t > VolThresh$ (Volatility Above Threshold)
- $Volatility_t < VolThresh$ (Volatility Below Threshold)
- $MeanRevert_t > MeanRevertThresh$ (Mean Reversion Indicator Above Thresho[7D[K
Threshold)
- $MeanRevert_t < MeanRevertThresh$ (Mean Reversion Indicator Below Thresho[7D[K
Threshold)

### Risk Management
- $EV = (WinRate \times AvgWin) - (LossRate \times AvgLoss)$ (Expected Valu[4D[K
Value)
- $TrailingStop_t = Price_t - ATR_t$ (ATR Trailing Stop)
- $PositionSize = Money \times \frac{RiskRate}{Volatility_t}$ (Position Siz[3D[K
Size)

## Exit & Timeframe Optimization

### Exit Methods
- Fixed TP
- Volatility-normalized SL
- Breakeven
- ATR Trailing
- Time-based stops (e.g., M1, H4, D1)

## Mathematical Risk Management

## Testing Standard

## Monte Carlo & Drawdown

## Deep Analysis of Promising Candidates

### Candidate 1: Volume Filter
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: Volume Exceeds Threshold, Within Bollinger Bands, RSI Above [K
Threshold
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, Volume, Bollinger Bands, RSI, MACD
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

### Candidate 2: Bollinger Band Breakout
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: Bollinger Band Breakout, RSI Above Threshold
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, Bollinger Bands, RSI, MACD
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

### Candidate 3: Moving Average Crossover
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: MA Crossover, RSI Above Threshold
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, Short-term MA, Long-term MA, RSI, MACD
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

### Candidate 4: Relative Strength Index (RSI) Filter
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: RSI Above Threshold, RSI Below Threshold, Volatility Above T[1D[K
Threshold
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, RSI, Volatility, MACD
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

### Candidate 5: MACD Filter
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: MACD Above Threshold, MACD Below Threshold, Volatility Above[5D[K
Above Threshold
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, MACD, Volatility, MACD Line, RSI
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

### Candidate 6: Momentum with Volatility Filter
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: RSI Above Threshold, Volatility Above Threshold
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, RSI, Volatility, MACD
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

### Candidate 7: Mean Reversion with Bollinger Band Filter
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: Bollinger Band Outside, Mean Reversion Indicator Above Thres[5D[K
Threshold
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, Bollinger Bands, Mean Reversion Indicator, [K
Volatility, MACD
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

### Candidate 8: Volume with Bollinger Band Filter
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: Volume Above Threshold, Bollinger Band Outside
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, Volume, Bollinger Bands, RSI, MACD
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

### Candidate 9: Volatility Filter with MACD
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: Volatility Above Threshold, MACD Above Threshold
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, Volatility, MACD, RSI
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

### Candidate 10: Mean Reversion with Volume Filter
- **Market**: Retail
- **Timeframe**: M1 to D1
- **Filters**: Volume Above Threshold, Mean Reversion Indicator Above Thres[5D[K
Threshold
- **Risk Management**: ATR Trailing Stop, Position Size based on Money and [K
Risk Rate
- **Data Requirements**: OHLCV, Volume, Mean Reversion Indicator, Volatilit[9D[K
Volatility, MACD
- **Execution Requirements**: MQL5 compatible
- **Testing**: 9-Stage Backtesting Protocol

## Exact Mathematical Rules
### Entry
- $VolExch_t > VolThresh$
- $BollingerBands_t < BollingerThresh$
- $RSI_t > RSIThresh$
- $MACD_t > MACDLine$

### Exit
- $FixedTP_t$
- $VolExch_t < VolThresh$
- $BollingerBands_t > BollingerThresh$
- $RSI_t < RSIThresh$
- $MACD_t < MACDLine$
- $ATR_t > ATRThresh$
- $ATR_t < ATRThresh$
- $Volatility_t > VolThresh$
- $Volatility_t < VolThresh$
- $MeanRevert_t > MeanRevertThresh$
- $MeanRevert_t < MeanRevertThresh$

### Risk Management
- $EV = (WinRate \times AvgWin) - (LossRate \times AvgLoss)$
- $TrailingStop_t = Price_t - ATR_t$
- $PositionSize = Money \times \frac{RiskRate}{Volatility_t}$

## Exact Mathematical Rules for MQL5 Compatible
### Entry
- $VolExch_t > VolThresh$
- $BollingerBands_t < BollingerThresh$
- $RSI_t > RSIThresh$
- $MACD_t > MACDLine$

### Exit
- $FixedTP_t$
- $VolExch_t < VolThresh$
- $BollingerBands_t > BollingerThresh$
- $RSI_t < RSIThresh$
- $MACD_t < MACDLine$
- $ATR_t > ATRThresh$
- $ATR_t < ATRThresh$
- $Volatility_t > VolThresh$
- $Volatility_t < VolThresh$
- $MeanRevert_t > MeanRevertThresh$
- $MeanRevert_t < MeanRevertThresh$

### Risk Management
- $EV = (WinRate \times AvgWin) - (LossRate \times AvgLoss)$
- $TrailingStop_t = Price_t - ATR_t$
- $PositionSize = Money \times \frac{RiskRate}{Volatility_t}$
```

