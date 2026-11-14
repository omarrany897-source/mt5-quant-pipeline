# MT5 Algorithmic Research Pipeline — Final Output

- **Run ID:** 43552067502
- **Completed:** 2026-11-14T03:51:18Z
- **Repository:** omarrany897-source/mt5-quant-pipeline

---

## Phase: 01-researcher

I'll start by reading the prompt file to understand what's required.

---

## Phase: 02-analyst

```mql5
// File name: EURUSD_4.mq5
// This Expert Advisor uses a multi-step approach to generate an MT5 strategy.

#include <MQL5Experts.mqh>

// Define constants and variables
double MA_PERIOD = 20; // Moving Average period
double RSI_PERIOD = 14; // RSI Period
double RSI_OVERBought = 70; // RSI Overbought level
double RSI_Oversold = 30; // RSI Oversold level
double ATR_PERIOD = 14; // ATR Period
double STO_PERIOD = 14; // STO Period
double STO_SIGNAL = 3; // STO Signal line

// Define indicators
double RSI_Value;
double ATR_Value;
double STO_Value;
double EMA_Value;
double MACD_Value;

// Expert initialization function
void OnInit()
{
    // Initialize indicators
    RSI_Value = RSI(RSI_PERIOD, RSI_OVERBought, RSI_Oversold);
    ATR_Value = ATR(ATR_PERIOD);
    STO_Value = STO(STO_PERIOD);
    EMA_Value = MA(MA_PERIOD, PRICE_CLOSE, MODE_SMA);
    MACD_Value = MACD(12, 26, 9, MODE_EMA);
    
    // Set default parameters for the Expert Advisor
    EMA_Value = EMA_Value + ATR_Value * 1.5; // Adjusting EMA based on ATR
    MACD_Value = MACD_Value + ATR_Value * 2; // Adjusting MACD based on ATR
    RSI_Value = RSI_Value + ATR_Value * 1.2; // Adjusting RSI based on ATR
    STO_Value = STO_Value + ATR_Value * 1.3; // Adjusting STO based on ATR
    STO_Value = STO_Value + ATR_Value * 0.5; // Adjusting STO based on ATR
    
    // Set stop loss and take profit
    if (RSI_Value > RSI_Oversold)
    {
        StopLoss = EMA_Value - ATR_Value * 2; // Stop Loss when RSI is oversold
        TakeProfit = EMA_Value + ATR_Value * 2; // Take Profit when RSI is oversold
    }
    else if (RSI_Value < RSI_OVERBought)
    {
        StopLoss = EMA_Value + ATR_Value * 2; // Stop Loss when RSI is overbought
        TakeProfit = EMA_Value - ATR_Value * 2; // Take Profit when RSI is overbought
    }
    else
    {
        StopLoss = EMA_Value - ATR_Value * 1; // Default stop loss
        TakeProfit = EMA_Value + ATR_Value * 1; // Default take profit
    }
    
    // Set initial parameters
    SetOption(INDICATOR, RSI, RSI_PERIOD, RSI_OVERBought, RSI_Oversold);
    SetOption(INDICATOR, ATR, ATR_PERIOD);
    SetOption(INDICATOR, STO, STO_PERIOD, STO_SIGNAL);
    SetOption(INDICATOR, EMA, MA_PERIOD);
    SetOption(INDICATOR, MACD, 12, 26, 9);
    
    // Set initial stop loss and take profit
    SetOption(StopLoss, EMA, ATR_Value * 2);
    SetOption(TakeProfit, EMA, ATR_Value * 2);
    
    // Set initial risk and reward ratio
    SetOption(Risk, 1.5); // 1.5:1 risk reward ratio
    SetOption(Reward, 1.5); // 1.5:1 reward ratio
    
    // Set default entry and exit conditions
    SetOption(Entry, EMA, RSI, STO, MACD);
    SetOption(Exit, RSI, MACD);
    
    // Set initial session hours
    SetOption(Session, 0900, 1600);
}

// Function to check if the current price is within the recent EMA range
bool IsWithinEMARange()
{
    return EMA_Value - EMA_Value / 100 <= Close && Close <= EMA_Value + EMA_Value / 100;
}

// Expert execution function
bool OnTick()
{
    // Check if current price is within the recent EMA range
    if (IsWithinEMARange())
    {
        if (RSI_Value > RSI_Oversold)
        {
            if (STO_Value > STO_SIGNAL)
            {
                BuyOrder(StopLoss, TakeProfit);
            }
        }
        else if (RSI_Value < RSI_OVERBought)
        {
            if (STO_Value < STO_SIGNAL)
            {
                SellOrder(StopLoss, TakeProfit);
            }
        }
    }
    
    return true;
}
```

```mql5
// This Expert Advisor is designed to trade the EURUSD market symbol.
// It is based on an EMA crossover strategy with adjustments for volatility and session hours.
```


---

## Phase: 03-strategy-designer

```mql5
// File name: EURUSD_4.mq5
// This Expert Advisor uses a multi-step approach to generate an MT5 strategy.

#include <MQL5Experts.mqh>

// Define constants and variables
double MA_PERIOD = 20; // Moving Average period
double RSI_PERIOD = 14; // RSI Period
double RSI_OVERBought = 70; // RSI Overbought level
double RSI_Oversold = 30; // RSI Oversold level
double ATR_PERIOD = 14; // ATR Period
double STO_PERIOD = 14; // STO Period
double STO_SIGNAL = 3; // STO Signal line

// Define indicators
double RSI_Value;
double ATR_Value;
double STO_Value;
double EMA_Value;
double MACD_Value;

// Expert initialization function
void OnInit()
{
    // Initialize indicators
    RSI_Value = RSI(RSI_PERIOD, RSI_OVERBought, RSI_Oversold);
    ATR_Value = ATR(ATR_PERIOD);
    STO_Value = STO(STO_PERIOD);
    EMA_Value = MA(MA_PERIOD, PRICE_CLOSE, MODE_SMA);
    MACD_Value = MACD(12, 26, 9, MODE_EMA);
    
    // Set default parameters for the Expert Advisor
    EMA_Value = EMA_Value + ATR_Value * 1.5; // Adjusting EMA based on ATR
    MACD_Value = MACD_Value + ATR_Value * 2; // Adjusting MACD based on ATR
    RSI_Value = RSI_Value + ATR_Value * 1.2; // Adjusting RSI based on ATR
    STO_Value = STO_Value + ATR_Value * 1.3; // Adjusting STO based on ATR
    STO_Value = STO_Value + ATR_Value * 0.5; // Adjusting STO based on ATR
    
    // Set stop loss and take profit
    if (RSI_Value > RSI_Oversold)
    {
        StopLoss = EMA_Value - ATR_Value * 2; // Stop Loss when RSI is oversold
        TakeProfit = EMA_Value + ATR_Value * 2; // Take Profit when RSI is oversold
    }
    else if (RSI_Value < RSI_OVERBought)
    {
        StopLoss = EMA_Value + ATR_Value * 2; // Stop Loss when RSI is overbought
        TakeProfit = EMA_Value - ATR_Value * 2; // Take Profit when RSI is overbought
    }
    else
    {
        StopLoss = EMA_Value - ATR_Value * 1; // Default stop loss
        TakeProfit = EMA_Value + ATR_Value * 1; // Default take profit
    }
    
    // Set initial parameters
    SetOption(INDICATOR, RSI, RSI_PERIOD, RSI_OVERBought, RSI_Oversold);
    SetOption(INDICATOR, ATR, ATR_PERIOD);
    SetOption(INDICATOR, STO, STO_PERIOD, STO_SIGNAL);
    SetOption(INDICATOR, EMA, MA_PERIOD);
    SetOption(INDICATOR, MACD, 12, 26, 9);
    
    // Set initial stop loss and take profit
    SetOption(StopLoss, EMA, ATR_Value * 2);
    SetOption(TakeProfit, EMA, ATR_Value * 2);
    
    // Set initial risk and reward ratio
    SetOption(Risk, 1.5); // 1.5:1 risk reward ratio
    SetOption(Reward, 1.5); // 1.5:1 reward ratio
    
    // Set default entry and exit conditions
    SetOption(Entry, EMA, RSI, STO, MACD);
    SetOption(Exit, RSI, MACD);
    
    // Set initial session hours
    SetOption(Session, 0900, 1600);
}

// Function to check if the current price is within the recent EMA range
bool IsWithinEMARange()
{
    return EMA_Value - EMA_Value / 100 <= Close && Close <= EMA_Value + EMA_Value / 100;
}

// Expert execution function
bool OnTick()
{
    // Check if current price is within the recent EMA range
    if (IsWithinEMARange())
    {
        if (RSI_Value > RSI_Oversold)
        {
            if (STO_Value > STO_SIGNAL)
            {
                BuyOrder(StopLoss, TakeProfit);
            }
        }
        else if (RSI_Value < RSI_OVERBought)
        {
            if (STO_Value < STO_SIGNAL)
            {
                SellOrder(StopLoss, TakeProfit);
            }
        }
    }
    
    return true;
}
```

```mql5
// This Expert Advisor is designed to trade the EURUSD market symbol.
// It is based on an EMA crossover strategy with adjustments for volatility and session hours.
```


---

## Phase: 04-mt5-engineer

```mql5
// File name: EURUSD_4.mq5
// This Expert Advisor uses a multi-step approach to generate an MT5 strategy.

#include <MQL5Experts.mqh>

// Define constants and variables
double MA_PERIOD = 20; // Moving Average period
double RSI_PERIOD = 14; // RSI Period
double RSI_OVERBought = 70; // RSI Overbought level
double RSI_Oversold = 30; // RSI Oversold level
double ATR_PERIOD = 14; // ATR Period
double STO_PERIOD = 14; // STO Period
double STO_SIGNAL = 3; // STO Signal line

// Define indicators
double RSI_Value;
double ATR_Value;
double STO_Value;
double EMA_Value;
double MACD_Value;

// Expert initialization function
void OnInit()
{
    // Initialize indicators
    RSI_Value = RSI(RSI_PERIOD, RSI_OVERBought, RSI_Oversold);
    ATR_Value = ATR(ATR_PERIOD);
    STO_Value = STO(STO_PERIOD);
    EMA_Value = MA(MA_PERIOD, PRICE_CLOSE, MODE_SMA);
    MACD_Value = MACD(12, 26, 9, MODE_EMA);
    
    // Set default parameters for the Expert Advisor
    EMA_Value = EMA_Value + ATR_Value * 1.5; // Adjusting EMA based on ATR
    MACD_Value = MACD_Value + ATR_Value * 2; // Adjusting MACD based on ATR
    RSI_Value = RSI_Value + ATR_Value * 1.2; // Adjusting RSI based on ATR
    STO_Value = STO_Value + ATR_Value * 1.3; // Adjusting STO based on ATR
    STO_Value = STO_Value + ATR_Value * 0.5; // Adjusting STO based on ATR
    
    // Set stop loss and take profit
    if (RSI_Value > RSI_Oversold)
    {
        StopLoss = EMA_Value - ATR_Value * 2; // Stop Loss when RSI is oversold
        TakeProfit = EMA_Value + ATR_Value * 2; // Take Profit when RSI is oversold
    }
    else if (RSI_Value < RSI_OVERBought)
    {
        StopLoss = EMA_Value + ATR_Value * 2; // Stop Loss when RSI is overbought
        TakeProfit = EMA_Value - ATR_Value * 2; // Take Profit when RSI is overbought
    }
    else
    {
        StopLoss = EMA_Value - ATR_Value * 1; // Default stop loss
        TakeProfit = EMA_Value + ATR_Value * 1; // Default take profit
    }
    
    // Set initial parameters
    SetOption(INDICATOR, RSI, RSI_PERIOD, RSI_OVERBought, RSI_Oversold);
    SetOption(INDICATOR, ATR, ATR_PERIOD);
    SetOption(INDICATOR, STO, STO_PERIOD, STO_SIGNAL);
    SetOption(INDICATOR, EMA, MA_PERIOD);
    SetOption(INDICATOR, MACD, 12, 26, 9);
    
    // Set initial stop loss and take profit
    SetOption(StopLoss, EMA, ATR_Value * 2);
    SetOption(TakeProfit, EMA, ATR_Value * 2);
    
    // Set initial risk and reward ratio
    SetOption(Risk, 1.5); // 1.5:1 risk reward ratio
    SetOption(Reward, 1.5); // 1.5:1 reward ratio
    
    // Set default entry and exit conditions
    SetOption(Entry, EMA, RSI, STO, MACD);
    SetOption(Exit, RSI, MACD);
    
    // Set initial session hours
    SetOption(Session, 0900, 1600);
}

// Function to check if the current price is within the recent EMA range
bool IsWithinEMARange()
{
    return EMA_Value - EMA_Value / 100 <= Close && Close <= EMA_Value + EMA_Value / 100;
}

// Expert execution function
bool OnTick()
{
    // Check if current price is within the recent EMA range
    if (IsWithinEMARange())
    {
        if (RSI_Value > RSI_Oversold)
        {
            if (STO_Value > STO_SIGNAL)
            {
                BuyOrder(StopLoss, TakeProfit);
            }
        }
        else if (RSI_Value < RSI_OVERBought)
        {
            if (STO_Value < STO_SIGNAL)
            {
                SellOrder(StopLoss, TakeProfit);
            }
        }
    }
    
    return true;
}
```


---

## Generated Expert Advisors

- `Experts/EURUSD_1.mq5`
- `Experts/EURUSD_2.mq5`
- `Experts/EURUSD_3.mq5`
