```mql5
//+------------------------------------------------------------------+
//| Expert initialization function                                    |
//+------------------------------------------------------------------+
void OnInit()
{
    //--- Indicators initialization
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
}

//--- Expert initialization function
void OnInit()
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

//--- Expert initialization
void OnStart()
{
    //--- Indicators initialization
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
}

//--- Expert initialization
void OnTick()
{
    //--- Indicators initialization
    EMA30 = iMA(NULL, 0, EMA30_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
    EMA100 = iMA(NULL, 0, EMA100_Period, 0, 0, MODE_SMA, PRICE_CLOSE);
}
```

