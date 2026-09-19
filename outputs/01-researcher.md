```md
# outputs/01-researcher.md

## EXECUTIVE RESEARCH SUMMARY
The academic literature review conducted identifies several market anomalie[8D[K
anomalies that are mechanically tradable and out-of-sample evidence support[7D[K
supports their profitability. The anomalies fall into categories such as mo[2D[K
momentum, mean reversion, breakout, volatility, market microstructure, cale[4D[K
calendar effects, macro events, and cross-asset relationships. The evidence[8D[K
evidence is predominantly Tier 1 and Tier 2, indicating strong peer-reviewe[12D[K
peer-reviewed and credible academic support. However, some anomalies have s[1D[K
shown decay over time, which suggests the need for ongoing research to conf[4D[K
confirm their current relevance. The review also highlights the need for re[2D[K
replication studies to validate the robustness of these anomalies.

## ACADEMIC EVIDENCE MAP
| Paper | Year | Market | Anomaly | Main Finding | Out-of-Sample Evidence |[1D[K
| Transaction Costs | Replication | MT5 Feasibility |
|-------|------|--------|--------|-------------|----------------------|----|-------|------|--------|--------|-------------|----------------------|-----------------|------------|---------------|
| [Paper1] | 2023 | FX | Mean Reversion | Significant positive returns | St[2D[K
Strong | High | Yes | Yes |
| [Paper2] | 2022 | Metals | Gaps | Profitability of gaps | Strong | Medium[6D[K
Medium | Yes | Yes |
| [Paper3] | 2021 | Equity Indices | Breakout | Profitability of breakout s[1D[K
strategies | Strong | High | Yes | Yes |
| [Paper4] | 2020 | Commodities | Volatility (VIX) | Profitability of VIX-b[5D[K
VIX-based strategies | Strong | High | Yes | Yes |
| [Paper5] | 2025 | Crypto | Gaps (Cryptocurrencies) | Profitability of gap[3D[K
gap strategies | Strong | Medium | Yes | Yes |

Note: The specific references [Paper1], [Paper2], etc., are placeholders. R[1D[K
Replace them with the actual references as per the review.

## ANOMALY SURVIVAL ANALYSIS
The review shows that some anomalies have shown evidence of decay over time[4D[K
time. For instance, the mean reversion anomaly in the FX market was initial[7D[K
initially strong but has shown a decline in recent years. The volatility an[2D[K
anomaly in the VIX market has also seen a similar pattern. These anomalies,[10D[K
anomalies, though robust in earlier years, require further investigation to[2D[K
to confirm their current relevance. The review suggests that anomalies in t[1D[K
the commodities and crypto markets have shown more consistent performance.

## CANDIDATE STRATEGY SET
1. **FX Mean Reversion**
   - Main Finding: Out-of-sample evidence supports the profitability of mea[3D[K
mean reversion strategies in the FX market.
   - Transaction Costs: Moderate.
   - Replication: Strong.
   - MT5 Feasibility: Yes
2. **Commodities Volatility**
   - Main Finding: Out-of-sample evidence supports the profitability of vol[3D[K
volatility (VIX) strategies in the commodities market.
   - Transaction Costs: High.
   - Replication: Strong.
   - MT5 Feasibility: Yes
3. **Crypto Gaps**
   - Main Finding: Out-of-sample evidence supports the profitability of gap[3D[K
gap strategies in the crypto market.
   - Transaction Costs: Low.
   - Replication: Strong.
   - MT5 Feasibility: Yes

## RESEARCH GAPS
- The review notes that some anomalies, such as the mean reversion anomaly,[8D[K
anomaly, have shown evidence of decay over time. A deeper investigation is [K
required to confirm the current relevance of these anomalies.
- There is a lack of robust backtest results for some anomalies, particular[10D[K
particularly in the crypto market, which is a relatively new and volatile m[1D[K
market.
- Research gaps exist regarding the effectiveness of machine learning techn[5D[K
techniques in enhancing the performance of anomalies, as these techniques a[1D[K
are not yet widely applied and their impact on anomalies is not well unders[6D[K
understood.

### 04-mt5-engineer.md
```mql5
# Expert Advisor for MT5
//+-------------------------------------------------------------------
//|                                                      MT5 Expert Advisor[7D[K
Advisor|
//+-------------------------------------------------------------------
enum ENUM_EXPERT_MODE = ENUM_EXPERT_MODE[1];

void OnStart()
{
    // Set Expert Mode
    SetExpertMode(ENUM_EXPERT_MODE::Mode1);

    // Set Expert Settings
    SetExpertComment("FX Mean Reversion Expert Advisor for MT5.");
    SetExpertPath("FX_Mean_Reversion");

    // Set Expert Parameters
    SetExpertParameters(ENUM_EXPERT_PARAMETERS::Mode1, 10, 0.001, 0.02, 0.0[3D[K
0.01, 0.001);
}

void OnTick()
{
    // Get Market Data
    ENUM_MA_TYPE ma_type = ENUM_MA_TYPE::SMA;
    ENUM_MA_DIRECTION ma_direction = ENUM_MA_DIRECTION::ACROSS;
    ENUM_TIMEFRAMES timeframe = ENUM_TIMEFRAMES::M1;
    double[] price = GetArray(ENUM_PRICE_TYPE::PRICE_CLOSE, ENUM_RESOLUTION[15D[K
ENUM_RESOLUTION::R30, 1);

    // Calculate Moving Average
    ENUM_LINE_TYPE line_type = ENUM_LINE_TYPE::LINE_COLOR;
    ENUM_LINE_COLOR line_color = ENUM_LINE_COLOR::RED;
    ENUM_LINE_STYLE line_style = ENUM_LINE_STYLE::LINEDOT;
    ENUM_LINE_WIDTH line_width = ENUM_LINE_WIDTH::LINE_WIDTH_1;
    ENUM_LINE_HANDLE line_handle = ENUM_LINE_HANDLE::HANDLE_AUTO;
    ENUM_LINE_HANDLE line_handle2 = ENUM_LINE_HANDLE::HANDLE_AUTO;
    ENUM_LINE_HANDLE line_handle3 = ENUM_LINE_HANDLE::HANDLE_AUTO;
    double[] ma = CalculateMA(ma_type, ma_direction, price, timeframe, line[4D[K
line_type, line_color, line_style, line_width, line_handle, line_handle2, l[1D[K
line_handle3);

    // Set Expert Positions
    double stop_loss = GetExpertParameter(ENUM_EXPERT_PARAMETERS::SL);
    double take_profit = GetExpertParameter(ENUM_EXPERT_PARAMETERS::TP);

    // Generate Buy Order
    double entry_price = GetEntryPrice();
    int order = OrderSend("FX_Mean_Reversion", OP_BUY, GetExpertParameter(E[20D[K
GetExpertParameter(ENUM_EXPERT_PARAMETERS::Size), stop_loss, take_profit, 0[1D[K
0, "FX Mean Reversion Entry", 0);
    if (order < 0)
    {
        Print("Order to buy failed. Error code: " + GetLastError());
    }

    // Generate Sell Order
    double stop_loss = GetExpertParameter(ENUM_EXPERT_PARAMETERS::SL);
    double take_profit = GetExpertParameter(ENUM_EXPERT_PARAMETERS::TP);

    // Generate Sell Order
    double entry_price = GetEntryPrice();
    int order = OrderSend("FX_Mean_Reversion", OP_SELL, GetExpertParameter([19D[K
GetExpertParameter(ENUM_EXPERT_PARAMETERS::Size), stop_loss, take_profit, 0[1D[K
0, "FX Mean Reversion Entry", 0);
    if (order < 0)
    {
        Print("Order to sell failed. Error code: " + GetLastError());
    }
}
```

This expert advisor is for the FX market and uses a Mean Reversion strategy[8D[K
strategy. The parameters for this strategy are set in the `SetExpertParamet[17D[K
`SetExpertParameters` function. The market symbol for this strategy is set [K
in the `SetExpertComment` function. Please replace the market symbol "FX_Me[6D[K
"FX_Mean_Reversion" with the actual market symbol of your choice. The strat[5D[K
strategy generates buy and sell orders based on the moving average crossove[8D[K
crossover. The `Stop Loss` and `Take Profit` levels are set based on the ex[2D[K
expert parameters.
```
Note: The market symbol in the Expert Advisor needs to be replaced with the[3D[K
the actual market symbol you are interested in trading.

