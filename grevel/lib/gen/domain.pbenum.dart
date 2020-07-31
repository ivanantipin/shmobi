///
//  Generated code. Do not modify.
//  source: domain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class OhlcPeriod extends $pb.ProtobufEnum {
  static const OhlcPeriod Day = OhlcPeriod._(0, 'Day');
  static const OhlcPeriod Week = OhlcPeriod._(1, 'Week');

  static const $core.List<OhlcPeriod> values = <OhlcPeriod> [
    Day,
    Week,
  ];

  static final $core.Map<$core.int, OhlcPeriod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OhlcPeriod valueOf($core.int value) => _byValue[value];

  const OhlcPeriod._($core.int v, $core.String n) : super(v, n);
}

class BuySell extends $pb.ProtobufEnum {
  static const BuySell Buy = BuySell._(0, 'Buy');
  static const BuySell Sell = BuySell._(1, 'Sell');

  static const $core.List<BuySell> values = <BuySell> [
    Buy,
    Sell,
  ];

  static final $core.Map<$core.int, BuySell> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BuySell valueOf($core.int value) => _byValue[value];

  const BuySell._($core.int v, $core.String n) : super(v, n);
}

class Chart_ChartType extends $pb.ProtobufEnum {
  static const Chart_ChartType Bar = Chart_ChartType._(0, 'Bar');
  static const Chart_ChartType Line = Chart_ChartType._(1, 'Line');

  static const $core.List<Chart_ChartType> values = <Chart_ChartType> [
    Bar,
    Line,
  ];

  static final $core.Map<$core.int, Chart_ChartType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Chart_ChartType valueOf($core.int value) => _byValue[value];

  const Chart_ChartType._($core.int v, $core.String n) : super(v, n);
}

