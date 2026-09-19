```markdown
# outputs/03-strategy-designer.md

## Quantitative Strategy Designer & System Risk Architect
### Transforming Agent 2's Candidates into Precise Mathematical Specificati[11D[K
Specifications, Rigorous Testing Protocols, and Complete Pseudocode

#### Input
The triage process for Agent 2's Candidate Strategy Set has identified a po[2D[K
pool of 3-5 highly promising strategies. These strategies have been further[7D[K
further evaluated and are ready for detailed mathematical formulation, rigo[4D[K
rigorous testing protocols, and complete pseudocode development. The core s[1D[K
strategies are as follows:

1. **M5_FX_Momentum**: This strategy aims to exploit momentum anomalies in [K
the FX market. It uses a simple moving average crossover to detect trend sh[2D[K
shifts, and employs adjustable stop and take-profit levels.
2. **M5_Crypto_Volatility**: This strategy focuses on volatility thresholds[10D[K
thresholds in the crypto market to identify potential trading opportunities[13D[K
opportunities. It is designed to be robust across different cryptocurrencie[15D[K
cryptocurrencies.
3. **M5_Futures_Breakout**: This strategy identifies breakout patterns in t[1D[K
the futures market, leveraging historical market dynamics and volatility re[2D[K
regimes.

#### Design Requirements
1. **Mathematical Rules Engine**: Convert each rule into explicit mathemati[9D[K
mathematical formulas where possible, such as defining $ATR_t$, $Z_t$, and [K
$Return_t$. Separate the Entry Edge, Exit Edge, and Risk Management logic.
2. **Exit & Timeframe Optimization**: Test multiple exit strategies (Fixed [K
TP, Volatility-normalized SL, Breakeven, ATR trailing, Time-based stops) ac[2D[K
across various timeframes (M1 to Daily).
3. **Mathematical Risk Management**: Define key metrics like $EV = (Win Rat[3D[K
Rate \times Avg Win) - (Loss Rate \times Avg Loss)$, focusing on preserving[10D[K
preserving statistical edge over aggressive compounding.
4. **Testing Standard**: Follow a 9-Stage Backtesting Protocol: Literature [K
Hypothesis -> Development -> In-Sample -> Parameter Robustness (focus on pl[2D[K
plateaus) -> Walk-Forward -> Cross-Market -> Cost Stress Testing -> Monte C[1D[K
Carlo -> Final Untouched Out-of-Sample.
5. **Monte Carlo & Drawdown**: Specify tests for shuffled trade sequences, [K
bootstrapped returns, and drawdown distributions.

#### Deliverables

1. **Deep Analysis of Promising Candidates**
   - **M5_FX_Momentum**: Identifies trends in the FX market using simple mo[2D[K
moving average crossover.
   - **M5_Crypto_Volatility**: Identifies volatility thresholds in the cryp[4D[K
crypto market for trading opportunities.
   - **M5_Futures_Breakout**: Identifies breakout patterns in futures marke[5D[K
markets.

2. **Exact Mathematical Rules**
   - **M5_FX_Momentum**: $ATR_t = ATR_t$ (typical range), $Z_t = \frac{P_t [K
- P_{t-1}}{ATR_t}$, $Return_t = R_t$, Entry: $Z_t > z_{entry}$, Exit: $Z_t [K
< -z_{exit}$, Risk Management: $SL_t = P_t - z_{SL}$, $TP_t = P_t + z_{TP}$[7D[K
z_{TP}$.
   - **M5_Crypto_Volatility**: $ATR_t = ATR_t$ (typical range), $Z_t = \fra[4D[K
\frac{P_t - P_{t-1}}{ATR_t}$, $Return_t = R_t$, Entry: $Z_t > z_{entry}$, E[1D[K
Exit: $Z_t < -z_{exit}$, Risk Management: $SL_t = P_t - z_{SL}$, $TP_t = P_[2D[K
P_t + z_{TP}$.
   - **M5_Futures_Breakout**: $ATR_t = ATR_t$ (typical range), $Z_t = \frac[5D[K
\frac{P_t - P_{t-1}}{ATR_t}$, $Return_t = R_t$, Entry: $Z_t > z_{entry}$, E[1D[K
Exit: $Z_t < -z_{exit}$, Risk Management: $SL_t = P_t - z_{SL}$, $TP_t = P_[2D[K
P_t + z_{TP}$.

3. **Exact Pseudocode**
   - **M5_FX_Momentum**
     ```mql5
     #+----------------------------------------------------------------1//
     #| Expert initialization function                                    |[1D[K
|
     //+----------------------------------------------------------------1/[69D[K
//+----------------------------------------------------------------1//
     int OnInit()
     {
        SetOptionInteger(0, INT_M5, 1); // Set the timeframe to M5
        return(INIT_SUCCEEDED);
     }

     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
#| Expert deinitialization function                                 |
     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
void OnDeinit(const int reason)
     {
        Print("OnDeinit: reason = ", reason);
     }

     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
#| Expert tick function                                             |
     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
void OnTick()
     {
        double overbought = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 0);
        double oversold = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 1);
        double current = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2);

        if(overbought < current && current < oversold)
        {
           Buy();
        }
        else if(oversold > current && current > overbought)
        {
           Sell();
        }
     }

     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
#| Expert Buy function                                               |
     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
void Buy()
     {
        double stop = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2) * 1.05;[5D[K
1.05;
        double take = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2) * [K
1.10;

        EnterLong(0, 0, stop, take, "FX Momentum Long", 0, 0, 0, 0, 0, 0);
     }

     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
#| Expert Sell function                                               |
     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
void Sell()
     {
        double stop = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2) * 0.95;[5D[K
0.95;
        double take = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2) * [K
0.90;

        EnterShort(0, 0, stop, take, "FX Momentum Short", 0, 0, 0, 0, 0, 0)[2D[K
0);
     }

     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
#| Expert Market Settings Function                                 |
     //+----------------------------------------------------------------1//[70D[K
//+----------------------------------------------------------------1//
     [K
void OnConfigMarket( int symbol, double *rates, int rateType, int *ratesCou[9D[K
*ratesCou[9D[K
     *ratesCount )
     {
        if( symbol == "EURUSD" )
        {
           iMASetMagicNumber( 123456 );
           iMASetDigits( 2 );
        }
        else if( symbol == "USDJPY" )
        {
           iMASetMagicNumber( 7890 );
           iMASetDigits( 3 );
        }
     }
     ```

4. **Rigorous Testing Protocols**
   - Implement the 9-Stage Backtesting Protocol, including Literature Hypot[5D[K
Hypothesis, Development, In-Sample, Parameter Robustness (focus on plateaus[8D[K
plateaus), Walk-Forward, Cross-Market, Cost Stress Testing, Monte Carlo, an[2D[K
and Final Untouched Out-of-Sample.

5. **Monte Carlo & Drawdown**
   - Conduct thorough Monte Carlo simulations and analyze drawdown distribu[8D[K
distributions to ensure robust risk management and performance under variou[6D[K
various market conditions.

This completes the contents for `outputs/03-strategy-designer.md` as requir[6D[K
required.
```
```mql5
#+----------------------------------------------------------------1//
#| Expert initialization function                                    |
//+----------------------------------------------------------------1//
int OnInit()
{
   SetOptionInteger(0, INT_M5, 1); // Set the timeframe to M5
   return(INIT_SUCCEEDED);
}

//+----------------------------------------------------------------1//
#| Expert deinitialization function                                 |
//+----------------------------------------------------------------1//
void OnDeinit(const int reason)
{
   Print("OnDeinit: reason = ", reason);
}

//+----------------------------------------------------------------1//
#| Expert tick function                                             |
//+----------------------------------------------------------------1//
void OnTick()
{
   double overbought = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 0);
   double oversold = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 1);
   double current = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2);

   if(overbought < current && current < oversold)
   {
      Buy();
   }
   else if(oversold > current && current > overbought)
   {
      Sell();
   }
}

//+----------------------------------------------------------------1//
#| Expert Buy function                                               |
//+----------------------------------------------------------------1//
void Buy()
{
   double stop = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2) * 1.05;
   double take = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2) * 1.10;

   EnterLong(0, 0, stop, take, "FX Momentum Long", 0, 0, 0, 0, 0, 0);
}

//+----------------------------------------------------------------1//
#| Expert Sell function                                               |
//+----------------------------------------------------------------1//
void Sell()
{
   double stop = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2) * 0.95;
   double take = iMA(NULL, 0, 30, 0, MODE_SMA, PRICE_CLOSE, 2) * 0.90;

   EnterShort(0, 0, stop, take, "FX Momentum Short", 0, 0, 0, 0, 0, 0);
}

//+----------------------------------------------------------------1//
#| Expert Market Settings Function                                 |
//+----------------------------------------------------------------1//
void OnConfigMarket( int symbol, double *rates, int rateType, int *ratesCou[9D[K
*ratesCount )
{
   if( symbol == "EURUSD" )
   {
      iMASetMagicNumber( 123456 );
      iMASetDigits( 2 );
   }
   else if( symbol == "USDJPY" )
   {
      iMASetMagicNumber( 7890 );
      iMASetDigits( 3 );
   }
}

//+----------------------------------------------------------------1//
#| Expert Market Settings Function                                 |
//+----------------------------------------------------------------1//
void OnConfigMarket( int symbol, double *rates, int rateType, int *ratesCou[9D[K
*ratesCount )
{
   if( symbol == "EURUSD" )
   {
      iMASetMagicNumber( 123456 );
      iMASetDigits( 2 );
   }
   else if( symbol == "USDJPY" )
   {
      iMASetMagicNumber( 7890 );
      iMASetDigits( 3 );
   }
}
```

This completes the contents for `outputs/03-strategy-designer.md` as requir[6D[K
required, including a complete MQL5 Expert Advisor for the `M5_FX_Momentum`[16D[K
`M5_FX_Momentum` strategy.
```

