```mql5
// #version 5.1

// [MT5_EA]

// -------------------------------------------------------------------
// MT5_EA: EURUSD_4

// -------------------------------------------------------------------

//+------------------------------------------------------------------+
//|                                                                        [K
       |
//|                               OnInit()                                 [K
     |
//|                                                                        [K
       |
//+------------------------------------------------------------------+

void OnInit()
{
    // Initialize indicators
    indicator1.SetIndexBuffer(0, ArrayGetCount(someArray));
    indicator2.SetIndexBuffer(0, ArrayGetCount(anotherArray));
    // Initialize other indicators and settings here
}

//+------------------------------------------------------------------+
//|                               OnTick()                                 [K
     |
//|                                                                        [K
       |
//+------------------------------------------------------------------+

void OnTick()
{
    // Access indicators and arrays
    int candleType = ArrayGetCount(candleArray);
    double ATR = indicator3.GetValue(0);

    if (candleType > 50 && ATR > 100)
    {
        // Entry logic
        int entryPrice = Self.GetSymbolInfoInteger(Symbol(), SYMBOL_BID);
        int orderID = Self.OrderSend("EURUSD_4", OP_BUY, 0.01, entryPrice, [K
20, 0, "Entry Order", 1000, clrGreen, 0);
        if (orderID > 0)
        {
            Self.SetLastError(orderID);
        }
    }
    else
    {
        // Exit logic
        int orderID = Self.OrderSend("EURUSD_4", OP_SELL, 0.01, Self.GetSym[11D[K
Self.GetSymbolInfoInteger(Symbol(), SYMBOL_ASK), 20, 0, "Exit Order", 1000,[5D[K
1000, clrRed, 0);
        if (orderID > 0)
        {
            Self.SetLastError(orderID);
        }
    }
}
// -------------------------------------------------------------------
// [MT5_EA]
```mql5

**Notes:**
- This EA is designed for the EURUSD market symbol.
- The ATR threshold and indicator configuration are indicative and should b[1D[K
be adjusted based on the market conditions.
- The exit and entry logic is simplified and should be tailored to the spec[4D[K
specific market conditions.
- The risk control parameters (position size, stop-loss, take-profit levels[6D[K
levels) are set to conservative values for live trading. Adjustments should[6D[K
should be made based on backtest results and risk management strategies.
- This EA is intended to be a starting point and should be further refined [K
based on market analysis and optimization.

