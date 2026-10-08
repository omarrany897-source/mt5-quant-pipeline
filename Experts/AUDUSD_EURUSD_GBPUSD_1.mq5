#property strict
#property version "2.00"

#include <Trade/Trade.mqh>

input string InpMarket = "EURUSD";
input ENUM_TIMEFRAMES InpTimeframe = PERIOD_M15;
input int InpAtrPeriod = 14;
input double InpBreakoutAtrBuffer = 0.10;
input double InpStopAtrMultiple = 1.00;
input double InpRewardRisk = 1.50;
input double InpRiskPercent = 0.25;
input double InpMaxSpreadAtrFraction = 0.10;
input int InpLookbackBars = 12;
input ulong InpMagicNumber = 20260920;

CTrade trade;
int atrHandle = INVALID_HANDLE;
int trendHandle = INVALID_HANDLE;
datetime lastBar = 0;

double NormalizeVolume(const double requested)
{
   double minimum = SymbolInfoDouble(InpMarket, SYMBOL_VOLUME_MIN);
   double maximum = SymbolInfoDouble(InpMarket, SYMBOL_VOLUME_MAX);
   double step = SymbolInfoDouble(InpMarket, SYMBOL_VOLUME_STEP);
   if(step <= 0.0) return 0.0;
   double volume = MathMax(minimum, MathMin(maximum, requested));
   volume = MathFloor(volume / step) * step;
   return NormalizeDouble(volume, 2);
}

double RiskBasedVolume(const double entry, const double stop)
{
   double tickSize = SymbolInfoDouble(InpMarket, SYMBOL_TRADE_TICK_SIZE);
   double tickValue = SymbolInfoDouble(InpMarket, SYMBOL_TRADE_TICK_VALUE);
   double equity = AccountInfoDouble(ACCOUNT_EQUITY);
   double riskCash = equity * InpRiskPercent / 100.0;
   double stopDistance = MathAbs(entry - stop);
   if(tickSize <= 0.0 || tickValue <= 0.0 || stopDistance <= 0.0 || riskCash <= 0.0)
      return 0.0;
   return NormalizeVolume(riskCash / (stopDistance / tickSize * tickValue));
}

bool IsNewBar()
{
   datetime current = iTime(InpMarket, InpTimeframe, 0);
   if(current == 0 || current == lastBar) return false;
   lastBar = current;
   return true;
}

int OnInit()
{
   if(InpLookbackBars < 2 || InpAtrPeriod < 2 || InpStopAtrMultiple <= 0.0 ||
      InpRewardRisk < 1.50 || InpRiskPercent <= 0.0)
      return(INIT_PARAMETERS_INCORRECT);

   trade.SetExpertMagicNumber(InpMagicNumber);
   atrHandle = iATR(InpMarket, InpTimeframe, InpAtrPeriod);
   trendHandle = iMA(InpMarket, InpTimeframe, 50, 0, MODE_EMA, PRICE_CLOSE);
   if(atrHandle == INVALID_HANDLE || trendHandle == INVALID_HANDLE)
      return(INIT_FAILED);
   return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
   if(atrHandle != INVALID_HANDLE) IndicatorRelease(atrHandle);
   if(trendHandle != INVALID_HANDLE) IndicatorRelease(trendHandle);
}

void OnTick()
{
   if(!IsNewBar() || PositionSelect(InpMarket)) return;

   MqlRates rates[];
   ArraySetAsSeries(rates, true);
   int required = InpLookbackBars + 3;
   if(CopyRates(InpMarket, InpTimeframe, 0, required, rates) != required)
      return;

   double atr[], trend[];
   ArrayResize(atr, 2);
   ArrayResize(trend, 2);
   ArraySetAsSeries(atr, true);
   ArraySetAsSeries(trend, true);
   if(CopyBuffer(atrHandle, 0, 0, 2, atr) != 2 ||
      CopyBuffer(trendHandle, 0, 0, 2, trend) != 2)
      return;

   double priorHigh = rates[2].high;
   double priorLow = rates[2].low;
   for(int index = 3; index <= InpLookbackBars + 1; index++)
   {
      priorHigh = MathMax(priorHigh, rates[index].high);
      priorLow = MathMin(priorLow, rates[index].low);
   }

   double point = SymbolInfoDouble(InpMarket, SYMBOL_POINT);
   long spreadPoints = SymbolInfoInteger(InpMarket, SYMBOL_SPREAD);
   double spread = spreadPoints * point;
   double volatility = atr[1];
   if(point <= 0.0 || volatility <= 0.0 || spread <= 0.0 ||
      spread > volatility * InpMaxSpreadAtrFraction)
      return;

   double close = rates[1].close;
   bool buySignal = close > priorHigh + volatility * InpBreakoutAtrBuffer &&
                    close > trend[1];
   bool sellSignal = close < priorLow - volatility * InpBreakoutAtrBuffer &&
                     close < trend[1];
   if(!buySignal && !sellSignal) return;

   double ask = SymbolInfoDouble(InpMarket, SYMBOL_ASK);
   double bid = SymbolInfoDouble(InpMarket, SYMBOL_BID);
   if(ask <= 0.0 || bid <= 0.0) return;

   double stopDistance = volatility * InpStopAtrMultiple;
   double targetDistance = stopDistance * InpRewardRisk;
   if(buySignal)
   {
      double stop = ask - stopDistance;
      double target = ask + targetDistance;
      double volume = RiskBasedVolume(ask, stop);
      if(volume > 0.0 && !trade.Buy(volume, InpMarket, ask, stop, target, "ATR breakout"))
         Print("Buy failed, error: ", GetLastError());
   }
   else if(sellSignal)
   {
      double stop = bid + stopDistance;
      double target = bid - targetDistance;
      double volume = RiskBasedVolume(bid, stop);
      if(volume > 0.0 && !trade.Sell(volume, InpMarket, bid, stop, target, "ATR breakout"))
         Print("Sell failed, error: ", GetLastError());
   }
}
