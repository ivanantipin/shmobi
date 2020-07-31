///
//  Generated code. Do not modify.
//  source: domain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const OhlcPeriod$json = const {
  '1': 'OhlcPeriod',
  '2': const [
    const {'1': 'Day', '2': 0},
    const {'1': 'Week', '2': 1},
  ],
};

const BuySell$json = const {
  '1': 'BuySell',
  '2': const [
    const {'1': 'Buy', '2': 0},
    const {'1': 'Sell', '2': 1},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

const HistoryRequest$json = const {
  '1': 'HistoryRequest',
  '2': const [
    const {'1': 'ticker', '3': 1, '4': 1, '5': 9, '10': 'ticker'},
    const {'1': 'period', '3': 2, '4': 1, '5': 14, '6': '.com.firelib.OhlcPeriod', '10': 'period'},
    const {'1': 'depth', '3': 3, '4': 1, '5': 5, '10': 'depth'},
  ],
};

const StratDescription$json = const {
  '1': 'StratDescription',
  '2': const [
    const {'1': 'benchmark', '3': 1, '4': 1, '5': 11, '6': '.com.firelib.Chart', '10': 'benchmark'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'openPositions', '3': 4, '4': 3, '5': 11, '6': '.com.firelib.Position', '10': 'openPositions'},
    const {'1': 'closedPositions', '3': 5, '4': 3, '5': 11, '6': '.com.firelib.Position', '10': 'closedPositions'},
    const {'1': 'charts', '3': 6, '4': 3, '5': 11, '6': '.com.firelib.Chart', '10': 'charts'},
  ],
};

const Position$json = const {
  '1': 'Position',
  '2': const [
    const {'1': 'ticker', '3': 1, '4': 1, '5': 9, '10': 'ticker'},
    const {'1': 'position', '3': 2, '4': 1, '5': 3, '10': 'position'},
    const {'1': 'openPrice', '3': 3, '4': 1, '5': 1, '10': 'openPrice'},
    const {'1': 'pnl', '3': 4, '4': 1, '5': 1, '10': 'pnl'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'closeTimestamp', '3': 6, '4': 1, '5': 3, '10': 'closeTimestamp'},
    const {'1': 'closePrice', '3': 7, '4': 1, '5': 1, '10': 'closePrice'},
    const {'1': 'buySell', '3': 8, '4': 1, '5': 14, '6': '.com.firelib.BuySell', '10': 'buySell'},
  ],
};

const Chart$json = const {
  '1': 'Chart',
  '2': const [
    const {'1': 'points', '3': 1, '4': 3, '5': 11, '6': '.com.firelib.DatePoint', '10': 'points'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'chartType', '3': 3, '4': 1, '5': 14, '6': '.com.firelib.Chart.ChartType', '10': 'chartType'},
  ],
  '4': const [Chart_ChartType$json],
};

const Chart_ChartType$json = const {
  '1': 'ChartType',
  '2': const [
    const {'1': 'Bar', '2': 0},
    const {'1': 'Line', '2': 1},
  ],
};

const DatePoint$json = const {
  '1': 'DatePoint',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
    const {'1': 'label', '3': 3, '4': 1, '5': 9, '10': 'label'},
  ],
};

const Level$json = const {
  '1': 'Level',
  '2': const [
    const {'1': 'level', '3': 1, '4': 1, '5': 11, '6': '.com.firelib.DatePoint', '10': 'level'},
    const {'1': 'levelType', '3': 2, '4': 1, '5': 14, '6': '.com.firelib.OhlcPeriod', '10': 'levelType'},
  ],
};

const Levels$json = const {
  '1': 'Levels',
  '2': const [
    const {'1': 'ticker', '3': 1, '4': 1, '5': 9, '10': 'ticker'},
    const {'1': 'levels', '3': 2, '4': 3, '5': 11, '6': '.com.firelib.Level', '10': 'levels'},
  ],
};

const OhlcTO$json = const {
  '1': 'OhlcTO',
  '2': const [
    const {'1': 'open', '3': 1, '4': 1, '5': 1, '10': 'open'},
    const {'1': 'high', '3': 2, '4': 1, '5': 1, '10': 'high'},
    const {'1': 'low', '3': 3, '4': 1, '5': 1, '10': 'low'},
    const {'1': 'close', '3': 4, '4': 1, '5': 1, '10': 'close'},
    const {'1': 'ticker', '3': 5, '4': 1, '5': 9, '10': 'ticker'},
    const {'1': 'timestamp', '3': 6, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'period', '3': 7, '4': 1, '5': 14, '6': '.com.firelib.OhlcPeriod', '10': 'period'},
  ],
};

