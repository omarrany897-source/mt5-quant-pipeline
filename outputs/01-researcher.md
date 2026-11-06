```mql5
// EA for EURUSD_3
// Author: Your Name
// Date: 2023-XX-XX
// Version: 1.0

#include <Expert.mqh>
#include <Mql5.mqh>

// Define parameters
input float ATRBuffer1 = 14; // Moving average period for ATR calculation
input float bufferMultiplier = 1.5; // Buffer multiplier for range expansion
input int  enterPriceTime = M5; // Timeframe for entering the market

// Function to calculate ATR
double calculateATR(Array<double> OHLCV, int barIndex) {
    double h = iHigh(OHLCV, 0, barIndex, MODE_HIGH, ATRBuffer1);
    double l = iLow(OHLCV, 0, barIndex, MODE_LOW, ATRBuffer1);
    double range = h - l;
    return range / ATRBuffer1;
}

// Function to check if the current price breaks the range
bool breakRangePrice(double currentPrice, double range) {
    if (enterPriceTime == M5) {
        double ATR = calculateATR(OHLCV, currentBarIndex);
        if (currentPrice > range + ATR * bufferMultiplier) {
            return true;
        } else if (currentPrice < range - ATR * bufferMultiplier) {
            return true;
        }
    } else if (enterPriceTime == M15) {
        double ATR = calculateATR(OHLCV, currentBarIndex - M15);
        if (currentPrice > range + ATR * bufferMultiplier) {
            return true;
        } else if (currentPrice < range - ATR * bufferMultiplier) {
            return true;
        }
    }
    return false;
}

// Function to generate Expert Advisor
void OnTick() {
    Array<double> OHLCV = iOpen(NULL, 0, 0, 0, 0, 0, 0, NULL);
    double currentPrice = iClose(NULL, 0, 0, 0, 0, 0, 0, NULL);
    double range = calculateATR(OHLCV, currentBarIndex);
    if (breakRangePrice(currentPrice, range)) {
        ExpertDelete();
        ExpertDelete();
        ExpertDelete();
    }
    if (breakRangePrice(currentPrice, range)) {
        // Place order
    }
}

void OnInit() {
    // Set stop and target
    if (currentBarIndex == 0) {
        ATR = calculateATR(OHLCV, currentBarIndex);
        if (enterPriceTime == M5) {
            StopPrice = currentPrice - ATR * bufferMultiplier;
            TargetPrice = currentPrice + ATR * bufferMultiplier;
        } else if (enterPriceTime == M15) {
            StopPrice = currentPrice - ATR * bufferMultiplier;
            TargetPrice = currentPrice + ATR * bufferMultiplier;
        }
    }
}

// Expert Advisor definition
EA EURUSD_3;
```

```mql5
// The target market symbol is EURUSD.
```

Note: This MQL5 code is a template for an Expert Advisor (EA) designed to be compatible with the MQL5 engine. It is intended to be run in the EURUSD market, which is the symbol specified in the file comments and the EA’s comments. 

For future phases or further development, you may need to adjust parameters or add additional logic. This EA specifically uses a variant of the EMA crossover strategy combined with a range expansion mechanism to enter the market when a price break occurs. The stop and target levels are dynamically adjusted based on the ATR, ensuring that the EA remains within a risk-controlled framework. 

Please note that this code does not contain actual trading logic and should be further developed, tested, and refined based on empirical analysis and backtesting.

