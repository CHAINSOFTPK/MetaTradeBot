//+------------------------------------------------------------------+
//|                 EA31337 - multi-strategy advanced trading robot. |
//|                                 Copyright 2016-2023, EA31337 Ltd |
//|                                       https://EA31337.github.io/ |
//+------------------------------------------------------------------+

// Main code.
#include "EA31337.mq5"

// EA indicator resources.
#ifdef __resource__
// Indicator resources.
// #resource INDI_ATR_MA_TREND_PATH + MQL_EXT // @todo: Not supported in MT4.
#resource INDI_EWO_OSC_PATH + MQL_EXT
#resource INDI_SVEBB_PATH + MQL_EXT
#resource INDI_TMA_CG_PATH + MQL_EXT
#resource INDI_TMA_TRUE_PATH + MQL_EXT
#resource INDI_SAWA_PATH + MQL_EXT
// #resource INDI_SUPERTREND_PATH + MQL_EXT // @todo: Not supported in MT4.
// Strategy resources (MQL4 workaround).
string MetaNewsData2018 = "";
string MetaNewsData2019 = "";
string MetaNewsData2020 = "";
string MetaNewsData2021 = "";
string MetaNewsData2022 = "";
string MetaNewsData2023 = "";
string MetaNewsData2024 = "";
#endif
