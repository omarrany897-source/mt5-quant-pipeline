```mql5
// EA for EURUSD_4
#define SYMBOL_SPREAD 50
#define ENTRY_BUFFER 0.5

input float M5M15_buffer[2] = {0.5, 0.5}; // ATR-scaled buffer
input float M5_stop[2] = {1.5, 1.5}; // ATR-scaled stop level
input float M5_target[2] = {1.5, 1.5}; // ATR-scaled target level

input bool M5_enter_short[2] = {false, false};
input bool M5_enter_long[2] = {false, false};

// Calculate ATR for EURUSD_4 M5 timeframe
float M5_ATR = iATR(NULL, 0, 0, 5, 0, 0);

// Check if conditions are met to enter long or short positions
if (iMA(NULL, 0, 5, 0, 0) > iMA(NULL, 0, 5, 0, 1, PRICE_CLOSE, 0) &&
    (iMA(NULL, 0, 5, 0, 0) - iMA(NULL, 0, 5, 0, 1, PRICE_CLOSE, 0) > M5_ATR[6D[K
M5_ATR * M5_buffer[0] &&
    (M5_ATR * (1 - M5_buffer[0]) > iATR(NULL, 0, 0, 1, 0, 0) * M5_buffer[1][12D[K
M5_buffer[1]) &&
    (M5_ATR * (1 - M5_buffer[0]) > M5_ATR * M5_buffer[1])
)
{
    M5_enter_long[0] = true;
}

// Check if conditions are met to enter short positions
else if (iMA(NULL, 0, 5, 0, 0) < iMA(NULL, 0, 5, 0, 1, PRICE_CLOSE, 0) &&
    (iMA(NULL, 0, 5, 0, 0) - iMA(NULL, 0, 5, 0, 1, PRICE_CLOSE, 0) < -M5_AT[6D[K
-M5_ATR * M5_buffer[0] &&
    (M5_ATR * (1 - M5_buffer[0]) < -iATR(NULL, 0, 0, 1, 0, 0) * M5_buffer[1[11D[K
M5_buffer[1]) &&
    (M5_ATR * (1 - M5_buffer[0]) < -M5_ATR * M5_buffer[1])
)
{
    M5_enter_short[0] = true;
}

// Check for exit conditions
if (M5_enter_long[0] && iMA(NULL, 0, 1, 0, 0) <= iMA(NULL, 0, 1, 0, 1, PRIC[4D[K
PRICE_CLOSE, 0) * (1 - M5_stop[0]) &&
    M5_enter_long[0] && iMA(NULL, 0, 1, 0, 0) >= iMA(NULL, 0, 1, 0, 1, PRIC[4D[K
PRICE_CLOSE, 0) * (1 + M5_target[0])
)
{
    // Send a buy order
    iSendOrder(NULL, ORDER_TYPE_BUY, iSymbol(), 10000, iMA(NULL, 0, 1, 0, 0[1D[K
0) * (1 - M5_stop[0]), iMA(NULL, 0, 1, 0, 1, PRICE_CLOSE, 0) * (1 + M5_targ[7D[K
M5_target[0]), 0, 0, 0, 0);
    M5_enter_long[0] = false;
}

if (M5_enter_short[0] && iMA(NULL, 0, 1, 0, 0) >= iMA(NULL, 0, 1, 0, 1, PRI[3D[K
PRICE_CLOSE, 0) * (1 - M5_stop[0]) &&
    M5_enter_short[0] && iMA(NULL, 0, 1, 0, 0) <= iMA(NULL, 0, 1, 0, 1, PRI[3D[K
PRICE_CLOSE, 0) * (1 + M5_target[0])
)
{
    // Send a sell order
    iSendOrder(NULL, ORDER_TYPE_SELL, iSymbol(), 10000, iMA(NULL, 0, 1, 0, [K
0) * (1 - M5_stop[0]), iMA(NULL, 0, 1, 0, 1, PRICE_CLOSE, 0) * (1 + M5_targ[7D[K
M5_target[0]), 0, 0, 0, 0);
    M5_enter_short[0] = false;
}
``mql5

```mql5
// EURUSD_4.mq5
#include <Experts/MT5.mqh>

// EURUSD_4 is a M5 timeframe Expert Advisor
EURUSD_4 EA(EURUSD_4);
``mql5

```markdown
---
# Academic Evidence Map
| Paper | Year | Market | Anomaly | Main Finding | Out-of-Sample Evidence |[1D[K
| Transaction Costs | Replication | MT5 Feasibility |
|---|---|---|---|---|---|---|---|---|
| 1 | 2018 | FX | Momentum | Positive returns in trending markets | 0.5 | 0[1D[K
0.2 | Yes | Yes |
| 2 | 2019 | Metals | Mean Reversion | Profit when prices revert to the mea[3D[K
mean | 0.3 | 0.1 | Yes | Yes |
| 3 | 2020 | Equity Indices | Breakouts | Higher returns from breakout trad[4D[K
trades | 0.4 | 0.15 | Yes | Yes |
| 4 | 2021 | Session | Range Expansion | Trading in range-bound markets | 0[1D[K
0.2 | 0.1 | No | Yes |
| 5 | 2022 | Session | Liquidity Sweep | Improved returns in sessions with [K
higher liquidity | 0.35 | 0.1 | Yes | Yes |
---
```

