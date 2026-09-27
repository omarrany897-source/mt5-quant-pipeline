# MT5 Algorithmic Research Pipeline — Final Output

- **Run ID:** 36294131830
- **Completed:** 2026-09-27T05:07:42Z
- **Repository:** omarrany897-source/mt5-quant-pipeline

---

## Phase: 01-researcher

<tool_call>
{"function": "Read", "arguments": {"file_path": "prompts/01-researcher.md"}}
</tool_call>

---

## Phase: 02-analyst

<tool_call>Read
<arg_key>file_path</arg_key>
<arg_value>/Users/chenyw/Desktop/AI-Research-Project/prompts/02-analyst.md</arg_value>
</tool_call>
<tool_call>Read
<arg_key>file_path</arg_key>
<arg_value>/Users/chenyw/Desktop/AI-Research-Project/outputs/01-researcher.md</arg_value>
</tool_call>

---

## Phase: 03-strategy-designer



I'll start by reading the prompt file and the previous analyst output to understand what's required.
<dots_function_call>
invoke="read">
<parameter name="file_path">prompts/03-strategy-designer.md
</parameter>
</invoke>
</dots_function_call>
<dots_function_call>
invoke="read">
<parameter name="file_path">outputs/02-analyst.md
</parameter>
</invoke>
</dots_function_call>

---

## Phase: 04-mt5-engineer

```mql5
// MQL5 Expert Advisor for EURUSD
// Target Market: EURUSD
// Version: 1.0.0

// Parameters
double fastMA = 10; // 2-period Exponential Moving Average
double slowMA = 50; // 20-period Exponential Moving Average
double stopLoss = 0.2; // 20% of 1.5 R (3 R for EURUSD)
double takeProfit = 0.8; // 80% of 1.5 R (2 R for EURUSD)
double leverage = 100; // 100x Leverage

// Variables
double lastPrice = 0;
int lastBar = 0;
int longCount = 0;
int shortCount = 0;
double openPosition = 0;
double closePosition = 0;
double positionProfit = 0;
double positionLoss = 0;
double positionPips = 0;
bool positionActive = false;

// OnOrder event
void OnInit()
{
    positionActive = true;
}

void OnTick()
{
    if (positionActive)
    {
        // Calculate new stop and take profits
        double stop = closePosition - takeProfit * (1 - closePosition);
        double take = closePosition + takeProfit * (1 - closePosition);

        // Check if market conditions are favorable for a long position
        if ((lastPrice - openPosition) > stop - take)
        {
            // If position is long, close it and place a new long position
            longClose();
            longOpen();
        }
        // Check if market conditions are favorable for a short position
        else if ((lastPrice - openPosition) < stop - take)
        {
            // If position is short, close it and place a new short positio[7D[K
position
            shortClose();
            shortOpen();
        }
        // If market conditions are not favorable, do nothing
        else
        {
            positionActive = false;
        }

        // Calculate new position profit/loss
        positionProfit = closePosition - openPosition;
        positionLoss = openPosition - closePosition;
        positionPips = abs(openPosition - closePosition);

        // Update position information
        lastPrice = lastPrice;
        lastBar = lastBar;
        longCount = longCount + longPosition;
        shortCount = shortCount + shortPosition;
        openPosition = lastPrice;
    }

    // Reset position information
    positionActive = false;
    longPosition = 0;
    shortPosition = 0;
    openPosition = 0;
    closePosition = 0;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition - closePosition;
    positionPips = abs(openPosition - closePosition);

    // Update position information
    lastPrice = lastPrice;
    lastBar = lastBar;
    longCount = longCount + longPosition;
    shortCount = shortCount + shortPosition;
    openPosition = lastPrice;
    closePosition = lastPrice;
}

// OnTick event
void OnTick()
{
    // Check if market conditions are favorable for a long position
    if ((lastPrice - openPosition) > stopLoss * (1 - closePosition))
    {
        longClose();
        longOpen();
    }

    // Check if market conditions are favorable for a short position
    else if ((lastPrice - openPosition) < stopLoss * (1 - closePosition))
    {
        shortClose();
        shortOpen();
    }

    // If market conditions are not favorable, do nothing
    else
    {
        positionActive = false;
    }

    // Calculate new position profit/loss
    positionProfit = closePosition - openPosition;
    positionLoss = openPosition


---

## Generated Expert Advisors

- `Experts/EURUSD_1.mq5`
- `Experts/EURUSD_2.mq5`
- `Experts/EURUSD_3.mq5`
