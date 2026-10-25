```mql5
// #version 5.0

// #LOC: EA Name=EURUSD_Cross_M5

// #SYMBOL=EURUSD
// #SYMBOL_SPREAD=0.0025
// #SYMBOL_HOURS=0,16,17,18,19
// #SYMBOL_TRADES=100,300

// [Strategy Settings]
int ATR_length = 14;
double ATR_multiplier = 1.5;
double stop_loss_percent = 1.5;
double take_profit_percent = 1.5;

// [Main]
input bool use_cross = true;
input double cross_value = 0.0;

double ATR_val = iATR(NULL, 0, 0, ATR_length, MODE_MAIN);
double cross_value = use_cross ? cross_value : 0.0;

void OnTick()
{
    double current_price = NormalizeTime(NULL, NULL_CLIENT_TIME, TIME_CLIEN[10D[K
TIME_CLIENT);
    double ATR_val = iATR(NULL, 0, 0, ATR_length, MODE_MAIN);
    double cross_value = use_cross ? cross_value : 0.0;

    if (use_cross)
    {
        if (current_price > cross_value && current_price > cross_value * AT[2D[K
ATR_val * ATR_multiplier)
        {
            // Buy signal
            OrderSend("EURUSD", OP_BUY, 0.1, current_price, 3, 0, 0, "", 0,[2D[K
0, 0, Blue);
        }
        else if (current_price < cross_value && current_price < cross_value[11D[K
cross_value * ATR_val * ATR_multiplier)
        {
            // Sell signal
            OrderSend("EURUSD", OP_SELL, 0.1, current_price, 3, 0, 0, "", 0[1D[K
0, 0, Red);
        }
    }
}
```

```

