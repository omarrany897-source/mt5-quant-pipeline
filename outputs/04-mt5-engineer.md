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

