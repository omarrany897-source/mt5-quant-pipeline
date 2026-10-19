#property strict
#property version "3.00"

#include <Trade/Trade.mqh>

input string InpMarket = "EURUSD";
input ENUM_TIMEFRAMES InpTimeframe = PERIOD_M15;
input int InpAtrPeriod = 14;
input int InpStructureBars = 4;
input double InpBreakoutAtrBuffer = 0.05;
input double InpStopAtrMultiple = 1.00;
input double InpRewardRisk = 1.50;
input double InpRiskPercent = 0.25;
input double InpMaxSpreadAtrFraction = 0.15;
input ulong InpMagicNumber = 20260921;

CTrade trade;
int atrHandle = INVALID_HANDLE;
datetime lastBar = 0;

double NormalizeVolume(const double requested)
{
   double minimum = SymbolInfoDouble(InpMarket, SYMBOL_VOLUME_MIN);
   double maximum = SymbolInfoDouble(InpMarket, SYMBOL_VOLUME_MAX);
   double step = SymbolInfoDouble(InpMarket, SYMBOL_VOLUME_STEP);
   if(step <= 0.0) return 0.0;
   double volume = MathMax(minimum, MathMin(maximum, requested));
   return NormalizeDouble(MathFloor(volume / step) * step, 2);
}

double RiskBasedVolume(const double entry, const double stop)
{
   double tickSize = SymbolInfoDouble(InpMarket, SYMBOL_TRADE_TICK_SIZE);
   double tickValue = SymbolInfoDouble(InpMarket, SYMBOL_TRADE_TICK_VALUE);
   double riskCash = AccountInfoDouble(ACCOUNT_EQUITY) * InpRiskPercent / 100.0;
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
   if(InpAtrPeriod < 2 || InpStructureBars < 2 || InpBreakoutAtrBuffer <= 0.0 ||
      InpStopAtrMultiple <= 0.0 || InpRewardRisk < 1.50 || InpRiskPercent <= 0.0)
      return(INIT_PARAMETERS_INCORRECT);

   trade.SetExpertMagicNumber(InpMagicNumber);
   atrHandle = iATR(InpMarket, InpTimeframe, InpAtrPeriod);
   if(atrHandle == INVALID_HANDLE)
      return(INIT_FAILED);
   return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
   if(atrHandle != INVALID_HANDLE) IndicatorRelease(atrHandle);
}

void OnTick()
{
   if(!IsNewBar() || PositionSelect(InpMarket)) return;

   int required = InpStructureBars + 3;
   MqlRates rates[];
   ArraySetAsSeries(rates, true);
   if(CopyRates(InpMarket, InpTimeframe, 0, required, rates) != required)
      return;

   double atr[];
   ArrayResize(atr, 2);
   ArraySetAsSeries(atr, true);
   if(CopyBuffer(atrHandle, 0, 0, 2, atr) != 2)
      return;

   double rangeHigh = rates[2].high;
   double rangeLow = rates[2].low;
   for(int index = 3; index <= InpStructureBars + 1; index++)
   {
      rangeHigh = MathMax(rangeHigh, rates[index].high);
      rangeLow = MathMin(rangeLow, rates[index].low);
   }

   double point = SymbolInfoDouble(InpMarket, SYMBOL_POINT);
   long spreadPoints = SymbolInfoInteger(InpMarket, SYMBOL_SPREAD);
   double volatility = atr[1];
   double spread = spreadPoints * point;
   if(point <= 0.0 || volatility <= 0.0 || spread <= 0.0 ||
      spread > volatility * InpMaxSpreadAtrFraction)
      return;

   double close = rates[1].close;
   bool buySignal = close > rangeHigh + volatility * InpBreakoutAtrBuffer;
   bool sellSignal = close < rangeLow - volatility * InpBreakoutAtrBuffer;
   if(!buySignal && !sellSignal) return;

   double ask = SymbolInfoDouble(InpMarket, SYMBOL_ASK);
   double bid = SymbolInfoDouble(InpMarket, SYMBOL_BID);
   double stopDistance = volatility * InpStopAtrMultiple;
   double targetDistance = stopDistance * InpRewardRisk;
   if(ask <= 0.0 || bid <= 0.0) return;

   if(buySignal)
   {
      double stop = ask - stopDistance;
      double target = ask + targetDistance;
      double volume = RiskBasedVolume(ask, stop);
      if(volume > 0.0 && !trade.Buy(volume, InpMarket, ask, stop, target, "Goldilocks range break"))
         Print("Buy failed, error: ", GetLastError());
   }
   else if(sellSignal)
   {
      double stop = bid + stopDistance;
      double target = bid - targetDistance;
      double volume = RiskBasedVolume(bid, stop);
      if(volume > 0.0 && !trade.Sell(volume, InpMarket, bid, stop, target, "Goldilocks range break"))
         Print("Sell failed, error: ", GetLastError());
   }
}
