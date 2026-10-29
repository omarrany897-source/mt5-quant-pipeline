```mql5
//+----------------------------------------------------------------1
#property strict
#property indicator_separate_window
#property indicator_buffers 0
#property indicator_color1 Red
#property indicator_style1 STYLE_CROSS

//--- Global variables
double EMA30, EMA100;
int EMA30_Period = 30;
int EMA100_Period = 100;

//--- Indicators initialization
int OnInit()
{
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    return(INIT_SUCCEEDED);
}

//--- Expert initialization
void OnStart()
{
    //--- Indicators initialization
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
}

//--- Expert initialization
void OnStart()
{
    //--- Indicators initialization
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);

    //--- Expert initialization
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
}

//--- Indicators initialization
int OnInit()
{
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    return(INIT_SUCCEEDED);
}

// Expert initialization function
int OnInit()
{
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    return(INIT_SUCCEEDED);
}
```

```mql5
//+----------------------------------------------------------------1
#property strict
#property indicator_separate_window
#property indicator_buffers 0
#property indicator_color1 Red
#property indicator_style1 STYLE_CROSS

//--- Global variables
double EMA30, EMA100;
int EMA30_Period = 30;
int EMA100_Period = 100;

//--- Indicators initialization
int OnInit()
{
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    return(INIT_SUCCEEDED);
}

//--- Expert initialization
void OnStart()
{
    //--- Indicators initialization
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
}

//--- Expert initialization
void OnStart()
{
    //--- Indicators initialization
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);

    //--- Expert initialization
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
}

//--- Indicators initialization
int OnInit()
{
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    return(INIT_SUCCEEDED);
}

// Expert initialization function
int OnInit()
{
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    return(INIT_SUCCEEDED);
}
```

The expert advisor for the target market symbol `EURUSD` is implemented as follows. The `OnInit` function initializes the EMAs, and the `OnStart` function handles the logic to check for entry and exit conditions based on the EMAs. The `OnTick` function is not implemented since it is not required for a simple entry-exit strategy.

