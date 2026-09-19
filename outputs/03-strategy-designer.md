```markdown
# Deep Analysis of Promising Candidates
Market: EURUSD
Timeframe: M1

## Market, Timeframe, Filters, Risk Management, Data/Execution Requirements[12D[K
Requirements

### 1. Mean Reversion in FX Pairs Trading
- **Core Signal**: Identify overbought and oversold conditions using the AT[2D[K
ATR indicator.
- **Volatility Filter**: Use volatility-based filters.
- **Execution Filter**: Execute trades at optimal price points using a Mart[4D[K
Martingale system.
- **Risk Management**: Set stop-loss and take-profit levels.
- **Data/Execution Requirements**: Historical data, API for real-time data.[5D[K
data.

### 2. Breakout Trading in Futures
- **Core Signal**: Identify significant breakout events.
- **Volatility Filter**: Use volatility-based filters.
- **Execution Filter**: Execute trades at optimal price points using a Mart[4D[K
Martingale system.
- **Risk Management**: Set stop-loss and take-profit levels.
- **Data/Execution Requirements**: Historical data, API for real-time data.[5D[K
data.

### 3. Mean Reversion in Equity Indices
- **Core Signal**: Identify overbought and oversold conditions in equity in[2D[K
indices.
- **Volatility Filter**: Use volatility-based filters.
- **Execution Filter**: Execute trades at optimal price points using a Mart[4D[K
Martingale system.
- **Risk Management**: Set stop-loss and take-profit levels.
- **Data/Execution Requirements**: Historical data, API for real-time data.[5D[K
data.

### 4. Momentum Trading in Crypto
- **Core Signal**: Identify momentum in crypto markets.
- **Volatility Filter**: Use volatility-based filters.
- **Execution Filter**: Execute trades at optimal price points using a Mart[4D[K
Martingale system.
- **Risk Management**: Set stop-loss and take-profit levels.
- **Data/Execution Requirements**: Historical data, API for real-time data.[5D[K
data.

### 5. Momentum Trading in Equity Indices
- **Core Signal**: Identify momentum in equity indices.
- **Volatility Filter**: Use volatility-based filters.
- **Execution Filter**: Execute trades at optimal price points using a Mart[4D[K
Martingale system.
- **Risk Management**: Set stop-loss and take-profit levels.
- **Data/Execution Requirements**: Historical data, API for real-time data.[5D[K
data.

### Target Market Symbol Guidance
For the above EA templates, the target market symbol is `EURUSD`. If you ne[2D[K
need to target a different market, adjust the EA accordingly.

---

# 04-mt5-engineer

## Mean Reversion in FX Pairs Trading (EURUSD.mq5)
```mql5
#Include "path\to\your\library\Expert.mqh"
#property indicator_separate_window
#property indicator_buffers 0
#property indicator_color1 White

//--- indicator parameters
input int ATRLength = 14; // Length of ATR calculation
input int ATRMultiplier = 3; // Multiplier for ATR calculation

//--- indicators buffers
double ATR;

// Expert initialization
int OnInit() {
    // Initialize ATR calculation
    SetIndexBuffer(0, ATR);
    SetIndexName(0, "ATR");
    SetIndexLabel(0, "ATR");
    SetIndexStep(0, 1);
    SetIndexPlotStyle(0, DRAW_LINE);
    ATR = iATR(NULL, 0, 0, ATRLength, ATRMultiplier);
    return(INIT_SUCCEEDED);
}

// Expert deinitialization
int OnDeinit(const int reason) {
    return(0);
}

// Expert tick
int OnTick() {
    if (NULL != ATR && !IsLastBar())
    {
        double currentATR = ATR[i];
        double currentPrice = iClose(NULL, 0, 0);
        
        if (currentATR > 0)
        {
            if (currentPrice > currentATR)
            {
                // Execute trade at optimal price point
                // Add code for opening and closing trades here
                return(0);
            }
            else if (currentPrice < currentATR)
            {
                // Execute trade at optimal price point
                // Add code for opening and closing trades here
                return(0);
            }
        }
    }
    return(0);
}
```
```

