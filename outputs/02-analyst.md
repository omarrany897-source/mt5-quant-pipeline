--- BEGIN outputs/02-analyst.md —---

```mql5
// EA for EURUSD_1. Customize settings as needed.
#define NAME "EURUSD_1"
#define FREQ M5
#define TIMEFRAME M1
#define STOPS 10
#define TGT 10
#define SPREAD 0.001 // Adjust based on your asset's spread
#define VOLUME 10 // Adjust based on your risk management requirements
#define MAX_TRADES 100 // Adjust based on your out-of-sample trade count ta[2D[K
target
#define LOG_FILE "EURUSD_1.log"
#define STRATEGY_NAME "EURUSD_1"

// [BEGIN OF STRATEGY]
// [BEGIN OF STRATEGY]
input bool enableMT5 = true; // Set to false to use as a test script

#property indicator_separate_window
#property indicator_buffers 2
#property indicator_label1 "Entry"
#property indicator_label2 "Exit"
#property indicator_color1 clrRed
#property indicator_color2 clrGreen

// Input parameters
input int interval = 2; // M5 or M1
input double stopLoss = 0.05; // 50 pips
input double takeProfit = 0.10; // 100 pips
input double risk = 0.01; // 1% of the position size
input int lotSize = 0.1; // 1 lot
input int maxTrades = 100; // Maximum number of trades per symbol per year

// [END OF STRATEGY]

// [BEGIN OF ENTRY]
double openPrice;
double openTime;
double openVolume;

// [BEGIN OF EXIT]
double closePrice;
double closeTime;
double closeVolume;

// [BEGIN OF STRATEGY]
double closePrice;
double closeTime;
double closeVolume;

double currentPrice;
double lastPrice;

// [END OF ENTRY]
double lastPrice;

// [BEGIN OF STRATEGY]
void OnInit()
{
    SetIndexBuffer(0, openTime);
    SetIndexBuffer(1, openPrice);
    SetIndexBuffer(2, openVolume);
    SetIndexBuffer(3, closeTime);
    SetIndexBuffer(4, closePrice);
    SetIndexBuffer(5, closeVolume);

    SetIndexStyle(0, PointStyleNone);
    SetIndexStyle(1, PointStyleSolid, clrRed);
    SetIndexStyle(2, PointStyleNone);

    SetIndexStyle(3, PointStyleNone);
    SetIndexStyle(4, PointStyleSolid, clrGreen);
    SetIndexStyle(5, PointStyleNone);

    SetIndexHighValue(0, 1);
    SetIndexHighValue(1, 1);
    SetIndexHighValue(2, 1);

    SetIndexHighValue(3, 1);
    SetIndexHighValue(4, 1);
    SetIndexHighValue(5, 1);

    SetIndexBufferShift(0, 1);
    SetIndexBufferShift(1, 1);
    SetIndexBufferShift(2, 1);

    SetIndexBufferShift(3, 1);
    SetIndexBufferShift(4, 1);
    SetIndexBufferShift(5, 1);
}

// [END OF ENTRY]
double getOpenPrice()
{
    currentPrice = iClose(NULL, interval, 0);
    return currentPrice;
}

// [BEGIN OF ENTRY]
void OnTick()
{
    openPrice = getOpenPrice();
    openTime = iTime(NULL, interval, 0, 0);
    openVolume = 0;

    lastPrice = currentPrice;

    currentPrice = getOpenPrice();

    if (openPrice < lastPrice && currentPrice > lastPrice)
    {
        openPrice = currentPrice;
        openTime = iTime(NULL, interval, 0, 0);
        openVolume = 1;
        LogPrint("Entry: ", openTime, ", ", openPrice, ", ", openVolume);
    }

    if (openPrice > lastPrice && currentPrice < lastPrice)
    {
        closePrice = currentPrice;
        closeTime = iTime(NULL, interval, 0, 0);
        closeVolume = 1;
        LogPrint("Exit: ", closeTime, ", ", closePrice, ", ", closeVolume);[13D[K
closeVolume);
    }
}

// [END OF ENTRY]
``` --- END outputs/02-analyst.md —---

