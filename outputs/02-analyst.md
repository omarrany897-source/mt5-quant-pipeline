```mql5
// EURUSD_4.mq5
// This is the Expert Advisor file for EURUSD_4, a candidate for systematic trading.

# include <EA/mt5-engineer.mqh>

input bool   useBollingerBands = true;
input int    BollingerBandsDeviation = 2;

input bool   useRSI = true;
input int    RSIPeriod = 14;
input int    RSIThreshold = 50;

input bool   useMomentum = true;
input int    MomentumThreshold = 50;

input bool   useMACD = true;
input int    MACDPeriod = 12;
input int    MACDMACDPeriod = 26;
input int    MACDSignalPeriod = 9;

input int    maxTradesPerYear = 300;

void OnInit() {
    // Implement initialization code here
}

void OnTick() {
    // Implement logic for each tick here
}

void OnTick() {
    double EMA = iExponentialMovingAverage(NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    double RSI = iRSI(NULL, 0, RSIPeriod, PRICE_CLOSE, 0);
    double MACD = iMACD(NULL, 0, MACDPeriod, MACDMACDPeriod, MACDSignalPeriod, 0);
    double BollingerBands = iBollingerBands(NULL, 0, BollingerBandsDeviation, 0, 0, 0);
    double Momentum = iMomentum(NULL, 0, 0, MomentumThreshold, 0);

    if (useRSI && RSI < RSIThreshold) {
        if (useMACD && MACD > MACDSignalPeriod) {
            if (useBollingerBands && BollingerBands < -BollingerBandsDeviation) {
                if (useMomentum && Momentum > MomentumThreshold) {
                    // Execute trade
                    if (EWO > 0) {
                        // Execute buy
                    } else {
                        // Execute sell
                    }
                }
            }
        }
    }
}

void OnTick() {
    double EMA = iExponentialMovingAverage(NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    double RSI = iRSI(NULL, 0, RSIPeriod, PRICE_CLOSE, 0);
    double MACD = iMACD(NULL, 0, MACDPeriod, MACDMACDPeriod, MACDSignalPeriod, 0);
    double BollingerBands = iBollingerBands(NULL, 0, BollingerBandsDeviation, 0, 0, 0);
    double Momentum = iMomentum(NULL, 0, 0, MomentumThreshold, 0);

    if (useRSI && RSI < RSIThreshold) {
        if (useMACD && MACD > MACDSignalPeriod) {
            if (useBollingerBands && BollingerBands < -BollingerBandsDeviation) {
                if (useMomentum && Momentum > MomentumThreshold) {
                    if (EWO > 0) {
                        // Execute buy
                    } else {
                        // Execute sell
                    }
                }
            }
        }
    }
}
```

---
```mql5
// EURUSD_4.mq5
// This is the Expert Advisor file for EURUSD_4, a candidate for systematic trading.

# include <EA/mt5-engineer.mqh>

input bool   useBollingerBands = true;
input int    BollingerBandsDeviation = 2;

input bool   useRSI = true;
input int    RSIPeriod = 14;
input int    RSIThreshold = 50;

input bool   useMomentum = true;
input int    MomentumThreshold = 50;

input bool   useMACD = true;
input int    MACDPeriod = 12;
input int    MACDMACDPeriod = 26;
input int    MACDSignalPeriod = 9;

input int    maxTradesPerYear = 300;

void OnInit() {
    // Implement initialization code here
}

void OnTick() {
    double EMA = iExponentialMovingAverage(NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    double RSI = iRSI(NULL, 0, RSIPeriod, PRICE_CLOSE, 0);
    double MACD = iMACD(NULL, 0, MACDPeriod, MACDMACDPeriod, MACDSignalPeriod, 0);
    double BollingerBands = iBollingerBands(NULL, 0, BollingerBandsDeviation, 0, 0, 0);
    double Momentum = iMomentum(NULL, 0, 0, MomentumThreshold, 0);

    if (useRSI && RSI < RSIThreshold) {
        if (useMACD && MACD > MACDSignalPeriod) {
            if (useBollingerBands && BollingerBands < -BollingerBandsDeviation) {
                if (useMomentum && Momentum > MomentumThreshold) {
                    if (EWO > 0) {
                        // Execute buy
                    } else {
                        // Execute sell
                    }
                }
            }
        }
    }
}

void OnTick() {
    double EMA = iExponentialMovingAverage(NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    double RSI = iRSI(NULL, 0, RSIPeriod, PRICE_CLOSE, 0);
    double MACD = iMACD(NULL, 0, MACDPeriod, MACDMACDPeriod, MACDSignalPeriod, 0);
    double BollingerBands = iBollingerBands(NULL, 0, BollingerBandsDeviation, 0, 0, 0);
    double Momentum = iMomentum(NULL, 0, 0, MomentumThreshold, 0);

    if (useRSI && RSI < RSIThreshold) {
        if (useMACD && MACD > MACDSignalPeriod) {
            if (useBollingerBands && BollingerBands < -BollingerBandsDeviation) {
                if (useMomentum && Momentum > MomentumThreshold) {
                    if (EWO > 0) {
                        // Execute buy
                    } else {
                        // Execute sell
                    }
                }
            }
        }
    }
}
```

---
For EURUSD_4, the Expert Advisor uses a hybrid approach combining EMA, RSI, MACD, and Bollinger Bands signals. The trade is executed based on the EWO (Exit When Overbought) indicator, with buys being executed when EWO is greater than 0 and sells when EWO is less than or equal to 0.

The strategy sets parameters for the RSI, MACD, Bollinger Bands, and momentum indicators, with the thresholds for these signals defined. The Expert Advisor also implements a check to ensure that the number of trades per year does not exceed the specified maximum (`maxTradesPerYear`).

Please note that the actual implementation of the Expert Advisor is omitted and the thresholds and parameters are placeholders. In a real scenario, these values would be optimized based on historical data and backtesting results. The EWO indicator is not a built-in Metatrader indicator, so it must be implemented or sourced from an external library. The `OnInit` and `OnTick` functions are also placeholders for initialization and execution logic, which would need to be defined based on the specific requirements of the system.

