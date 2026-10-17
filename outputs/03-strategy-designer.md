```markdown
# Strategy Design Document for EURUSD_3

## Design Requirements
1. **Mathematical Rules Engine**:
   - Entry Edge: On a new bar, check if the current bar's closing price cro[3D[K
crosses below the EMA10 of the past 10 bars. 
   - Exit Edge: 
     - **Fixed TP**: Place a take profit order 0.5 ATR above the current ba[2D[K
bar's closing price.
     - **Volatility-normalized SL**: Place a stop loss order at the 0.5 ATR[3D[K
ATR band below the current bar's closing price.
     - **Breakeven**: Place a stop loss order at the current bar's closing [K
price + 0.25 ATR below it, and a take profit order at the current bar's clo[3D[K
closing price - 0.25 ATR above it.
     - **ATR Trailing**: If the current bar's close is below the previous b[1D[K
bar's close, place a stop loss order at the previous bar's close - 1.5 ATR.[4D[K
ATR. If the current bar's close is above the previous bar's close, place a [K
stop loss order at the previous bar's close + 1.5 ATR. Place a take profit [K
order at the current bar's close + 0.5 ATR.
     - **Time-based Stop**: Place a stop loss order at the current bar's cl[2D[K
close - 10 minutes (assuming a trading day of 9600 bars).
   - **Risk Management**: Place a stop loss order 1.5 times the average Tru[3D[K
True Range (ATR) below the current bar's close. Set the take profit order 0[1D[K
0.5 times the ATR above the current bar's close.

2. **Exit & Timeframe Optimization**:
   - Test multiple exit methods as specified above.
   - Compare timeframes (M1 to Daily) to balance edge strength vs. transact[8D[K
transaction costs/noise. Focus on M1 to Daily timeframe for this optimizati[10D[K
optimization process.

3. **Mathematical Risk Management**:
   - **EV**: Define Expected Value as $(Win Rate \times Avg Win) - (Loss Ra[2D[K
Rate \times Avg Loss)$.
   - Focus on preserving the statistical edge rather than aggressive compou[6D[K
compounding. 

4. **Testing Standard**:
   - Develop a 9-Stage Backtesting Protocol: Literature Hypothesis -> Devel[5D[K
Development -> In-Sample -> Parameter Robustness (prefer plateaus over peak[4D[K
peaks) -> Walk-Forward -> Cross-Market -> Cost Stress Testing -> Monte Carl[4D[K
Carlo -> Final Untouched Out-of-Sample.
   - Define exactly what must be tested before trusting the strategy. For i[1D[K
instance, include tests for shuffled trade sequences, bootstrapped returns,[8D[K
returns, and drawdown distributions.

5. **Expected Performance Report Format**:
   - Track metrics such as CAGR, Sharpe, Sortino, Calmar, Recovery factor, [K
worst week/month, and tail losses.

## Deliverables
1. **Deep Analysis of Promising Candidates (3-5)**:
   - Analysis of market, timeframe, filters, risk management, and data/exec[9D[K
data/execution requirements.
2. **Exact Mathematical Rules**:
   - Precise formulas for entry, stop, TP, trailing, and position sizing.
3. **Exact Pseudocode**:
   - Complete logic flow (new bar logic, session checks, spread checks, tra[3D[K
trailing conditions) suitable for MQL5 conversion.
4. **Robustness Tests**:
   - Define exactly what must be tested before trusting the strategy.
5. **Expected Performance Report Format**:
   - Metrics to be tracked (CAGR, Sharpe, Sortino, Calmar, Recovery factor,[7D[K
factor, worst week/month, tail losses).

## Exact Mathematical Rules (Pseudocode)
```pseudocode
// Exact Mathematical Rules (Pseudocode)

// Function to calculate True Range (ATR)
function ATR(prevClose, currClose, prevClosePrevClose) {
    var range = Math.abs(currClose - prevClose);
    if (range > prevClosePrevClose) range = prevClosePrevClose;
    return range;
}

function PlaceOrder(direction, price, quantity, stopLoss, takeProfit) {
    // Order placement logic here
}

function EURUSD_3() {
    // Initialize EMA and other necessary variables
    var EMA10 = EMA(series);
    var ATR1 = ATR(prevClose, currClose, prevClosePrevClose);
    var AvgWin = 0; // Define or calculate as needed
    var AvgLoss = 0; // Define or calculate as needed

    while (true) {
        var currClose = iClose(NULL, 0, 0);
        var currClosePrevClose = iClose(NULL, 0, 1);
        var ATR1 = ATR(prevClose, currClose, currClosePrevClose);

        // Check for entry
        if (currClose < EMA10) {
            var stopLoss = currClose - 1.5 * ATR1;
            var takeProfit = currClose + 0.5 * ATR1;
            PlaceOrder("BUY", stopLoss, takeProfit, quantity);
        }

        // Check for exit conditions
        if (condition1) {
            PlaceOrder("SELL", takeProfit, stopLoss, quantity);
        } else if (condition2) {
            PlaceOrder("SELL", stopLoss, takeProfit, quantity);
        }
    }
}
```

## Exact Pseudocode
```pseudocode
// Exact Pseudocode for MQL5 Expert Advisor

OnInit() {
    Initialize EMA and other necessary variables
}

OnTick() {
    Calculate ATR and other necessary variables
    if (entry condition met) {
        PlaceOrder("BUY", stopLoss, takeProfit, quantity);
    } else if (exit condition1 met) {
        PlaceOrder("SELL", takeProfit, stopLoss, quantity);
    } else if (exit condition2 met) {
        PlaceOrder("SELL", stopLoss, takeProfit, quantity);
    }
}
```

## Target Market Symbol
- **EURUSD** (This is an example market symbol. Replace with the actual tar[3D[K
target market symbol.)
```mql5
// EURUSD Expert Advisor
#property indicator_chart_window // Required for MQL5 Expert Advisors

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
extern int quantity = 1; // Define or calculate as needed
extern double stopLoss = 1.5 * ATR1; // Define or calculate as needed
extern double takeProfit = 0.5 * ATR1; // Define or calculate as needed

//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void deinit() {
    // Deinitialization logic here
}

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit() {
    indicator_buffers.set(NULL, 0);
    indicator_buffers.set(NULL, 1);
    return(INIT_SUCCEEDED);
}

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick() {
    double currClose = iClose(NULL, 0, 0);
    double currClosePrevClose = iClose(NULL, 0, 1);
    double ATR1 = ATR(prevClose, currClose, currClosePrevClose);

    if (currClose < EMA10) {
        double stopLoss = currClose - 1.5 * ATR1;
        double takeProfit = currClose + 0.5 * ATR1;

        // Place a BUY order
        double currentSymbol = Symbol();
        if (currentSymbol == "EURUSD") {
            double lots = NormalizeDouble(quantity, 4);
            double price = NormalizeDouble(currClose, 5);
            int ticket = iBeginOrder(NULL, 0, OP_BUY, price, stopLoss, take[4D[K
takeProfit, 0, 0, ORDER_TYPE_BUY, 0, 0, "", 0, 0, 0, 0, 0);
            if (ticket > 0) {
                Print("Order placed, ticket: ", ticket);
            }
        }
    } else if (condition1) {
        // Place a SELL order
    } else if (condition2) {
        // Place a SELL order
    }
}
```

```

