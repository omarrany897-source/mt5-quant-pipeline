```mql5
// File: EURUSD.mq5
#autorun
#property indicator_separate_window
#property indicator_buffers 2
#property indicator_color1 Blue
#property indicator_color2 Red
#property indicator_label1 ""
#property indicator_label2 ""

//--- input parameters
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- indicators
double ATR[];
double M15[];

//--- buffers
buffer ATR_Buffer[1] = {ATR[0]};
buffer M15_Buffer[1] = {M15[0]};

//--- buffers
buffer M15Buffer[1] = {ATR[0]};
buffer M15Period[1] = {ATR[0]};
buffer M15BufferOffset[1] = {ATR[0]};
buffer M15BufferShift[1] = {ATR[0]};
buffer ATRPeriod[1] = {ATR[0]};
buffer ATRMultiplier[1] = {ATR[0]};

//--- input parameters
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- indicators
double ATR[];
double M15[];

//--- buffers
buffer ATR_Buffer[1] = {ATR[0]};
buffer M15_Buffer[1] = {M15[0]};

//--- buffers
buffer M15Buffer[1] = {ATR[0]};
buffer M15Period[1] = {ATR[0]};
buffer M15BufferOffset[1] = {ATR[0]};
buffer M15BufferShift[1] = {ATR[0]};
buffer ATRPeriod[1] = {ATR[0]};
buffer ATRMultiplier[1] = {ATR[0]};

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0;     // ATR Buffer
input int       ATRPeriod = 14;    // ATR Period
input double    ATRMultiplier = 1.5; // ATR Multiplier

//--- inputs
input int       M15Buffer = 0;    // M15 Bar Buffer
input int       M15Period = 15;   // M15 Bar Period
input int       M15BufferOffset = 0; // M15 Buffer Offset
input int       M15BufferShift = 0; // M15 Buffer Shift
input double    ATRBuffer = 0

