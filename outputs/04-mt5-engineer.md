```mql5
//+-------------------------------------------------------------------
//| MT5 Expert Advisor |
//| Strategy Design Framework Outputs |
//+-------------------------------------------------------------------
//| Symbol: BTCUSD
//+-------------------------------------------------------------------

// Define the strategy parameters
input double profitFactor = 1.05; // Target profit factor
input double sharpeRatio = 1.2; // Target Sharpe ratio
input int maxTradeCount = 500; // Maximum trade count
input int tradeWindowSize = 30; // Window size for trade detection
input int tradeSessionHours = 0; // Session hours (0 for unlimited)
input string strategyName = "Optimize BTCUSD"; // Name of the strategy

// Initialize variables
double currentProfit = 0.0;
int tradeCount = 0;
double totalProfit = 0.0;
double averageProfit = 0.0;
double maxDrawdown = 0.0;

// Function to calculate profit and drawdown
void CalculateProfit(string sym, double entryPrice, double stopLoss, double[6D[K
double takeProfit, double tradeSize)
{
    double profit = (entryPrice - stopLoss) / entryPrice * tradeSize;
    double drawdown = (entryPrice - takeProfit) / entryPrice * tradeSize;
    
    currentProfit += profit;
    maxDrawdown = MAX(maxDrawdown, drawdown);
    
    totalProfit += profit;
}

// Function to check if the trade is profitable
bool IsTradeProfitable(string sym, double entryPrice, double stopLoss, doub[4D[K
double takeProfit, double tradeSize)
{
    double profit = (entryPrice - stopLoss) / entryPrice * tradeSize;
    
    if (profit > 0) {
        return true;
    } else {
        return false;
    }
}

void OnInit()
{
    Print("Strategy " + strategyName + " has been successfully initialized![12D[K
initialized!");
}

void OnTick()
{
    // Get the current symbol
    string sym = GetSymbol();

    // Check if the strategy can be run on the current symbol
    if (sym == "BTCUSD") {
        // Get the most recent entry price, stop loss, and take profit for [K
the symbol
        double entryPrice = GetEntryPrice("BTCUSD", tradeWindowSize);
        double stopLoss = GetStopLoss("BTCUSD", tradeWindowSize);
        double takeProfit = GetTakeProfit("BTCUSD", tradeWindowSize);

        // Calculate the profit for the last trade
        CalculateProfit(sym, entryPrice, stopLoss, takeProfit, tradeSize);

        // Determine if the trade is profitable
        if (IsTradeProfitable(sym, entryPrice, stopLoss, takeProfit, tradeS[6D[K
tradeSize)) {
            Print("Trade is profitable: " + sym + " Entry Price: " + entryP[6D[K
entryPrice + " Stop Loss: " + stopLoss + " Take Profit: " + takeProfit);
        } else {
            Print("Trade is not profitable: " + sym + " Entry Price: " + en[2D[K
entryPrice + " Stop Loss: " + stopLoss + " Take Profit: " + takeProfit);
        }

        // Update the trade count and profit
        tradeCount++;
        currentProfit = 0.0;

        // Check if the trade count is within the maximum allowed
        if (tradeCount > maxTradeCount) {
            Print("Exceeded maximum trade count for " + sym);
        }
    } else {
        Print("Symbol not found: " + sym);
    }
}
```

