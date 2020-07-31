///
//  Generated code. Do not modify.
//  source: domain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'domain.pbenum.dart';

export 'domain.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Empty', package: const $pb.PackageName('com.firelib'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Empty clone() => Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty _defaultInstance;
}

class HistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HistoryRequest', package: const $pb.PackageName('com.firelib'), createEmptyInstance: create)
    ..aOS(1, 'ticker')
    ..e<OhlcPeriod>(2, 'period', $pb.PbFieldType.OE, defaultOrMaker: OhlcPeriod.Day, valueOf: OhlcPeriod.valueOf, enumValues: OhlcPeriod.values)
    ..a<$core.int>(3, 'depth', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  HistoryRequest._() : super();
  factory HistoryRequest() => create();
  factory HistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HistoryRequest clone() => HistoryRequest()..mergeFromMessage(this);
  HistoryRequest copyWith(void Function(HistoryRequest) updates) => super.copyWith((message) => updates(message as HistoryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryRequest create() => HistoryRequest._();
  HistoryRequest createEmptyInstance() => create();
  static $pb.PbList<HistoryRequest> createRepeated() => $pb.PbList<HistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static HistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryRequest>(create);
  static HistoryRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ticker => $_getSZ(0);
  @$pb.TagNumber(1)
  set ticker($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTicker() => $_has(0);
  @$pb.TagNumber(1)
  void clearTicker() => clearField(1);

  @$pb.TagNumber(2)
  OhlcPeriod get period => $_getN(1);
  @$pb.TagNumber(2)
  set period(OhlcPeriod v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeriod() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeriod() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get depth => $_getIZ(2);
  @$pb.TagNumber(3)
  set depth($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDepth() => $_has(2);
  @$pb.TagNumber(3)
  void clearDepth() => clearField(3);
}

class StratDescription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StratDescription', package: const $pb.PackageName('com.firelib'), createEmptyInstance: create)
    ..aOM<Chart>(1, 'benchmark', subBuilder: Chart.create)
    ..aOS(2, 'description')
    ..aOS(3, 'name')
    ..pc<Position>(4, 'openPositions', $pb.PbFieldType.PM, protoName: 'openPositions', subBuilder: Position.create)
    ..pc<Position>(5, 'closedPositions', $pb.PbFieldType.PM, protoName: 'closedPositions', subBuilder: Position.create)
    ..pc<Chart>(6, 'charts', $pb.PbFieldType.PM, subBuilder: Chart.create)
    ..hasRequiredFields = false
  ;

  StratDescription._() : super();
  factory StratDescription() => create();
  factory StratDescription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StratDescription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StratDescription clone() => StratDescription()..mergeFromMessage(this);
  StratDescription copyWith(void Function(StratDescription) updates) => super.copyWith((message) => updates(message as StratDescription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StratDescription create() => StratDescription._();
  StratDescription createEmptyInstance() => create();
  static $pb.PbList<StratDescription> createRepeated() => $pb.PbList<StratDescription>();
  @$core.pragma('dart2js:noInline')
  static StratDescription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StratDescription>(create);
  static StratDescription _defaultInstance;

  @$pb.TagNumber(1)
  Chart get benchmark => $_getN(0);
  @$pb.TagNumber(1)
  set benchmark(Chart v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBenchmark() => $_has(0);
  @$pb.TagNumber(1)
  void clearBenchmark() => clearField(1);
  @$pb.TagNumber(1)
  Chart ensureBenchmark() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Position> get openPositions => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<Position> get closedPositions => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<Chart> get charts => $_getList(5);
}

class Position extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Position', package: const $pb.PackageName('com.firelib'), createEmptyInstance: create)
    ..aOS(1, 'ticker')
    ..aInt64(2, 'position')
    ..a<$core.double>(3, 'openPrice', $pb.PbFieldType.OD, protoName: 'openPrice')
    ..a<$core.double>(4, 'pnl', $pb.PbFieldType.OD)
    ..aInt64(5, 'timestamp')
    ..aInt64(6, 'closeTimestamp', protoName: 'closeTimestamp')
    ..a<$core.double>(7, 'closePrice', $pb.PbFieldType.OD, protoName: 'closePrice')
    ..e<BuySell>(8, 'buySell', $pb.PbFieldType.OE, protoName: 'buySell', defaultOrMaker: BuySell.Buy, valueOf: BuySell.valueOf, enumValues: BuySell.values)
    ..hasRequiredFields = false
  ;

  Position._() : super();
  factory Position() => create();
  factory Position.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Position.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Position clone() => Position()..mergeFromMessage(this);
  Position copyWith(void Function(Position) updates) => super.copyWith((message) => updates(message as Position));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Position create() => Position._();
  Position createEmptyInstance() => create();
  static $pb.PbList<Position> createRepeated() => $pb.PbList<Position>();
  @$core.pragma('dart2js:noInline')
  static Position getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Position>(create);
  static Position _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ticker => $_getSZ(0);
  @$pb.TagNumber(1)
  set ticker($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTicker() => $_has(0);
  @$pb.TagNumber(1)
  void clearTicker() => clearField(1);

  @$pb.TagNumber(2)
  Int64 get position => $_getI64(1);
  @$pb.TagNumber(2)
  set position(Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get openPrice => $_getN(2);
  @$pb.TagNumber(3)
  set openPrice($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOpenPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpenPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get pnl => $_getN(3);
  @$pb.TagNumber(4)
  set pnl($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPnl() => $_has(3);
  @$pb.TagNumber(4)
  void clearPnl() => clearField(4);

  @$pb.TagNumber(5)
  Int64 get timestamp => $_getI64(4);
  @$pb.TagNumber(5)
  set timestamp(Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);

  @$pb.TagNumber(6)
  Int64 get closeTimestamp => $_getI64(5);
  @$pb.TagNumber(6)
  set closeTimestamp(Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCloseTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearCloseTimestamp() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get closePrice => $_getN(6);
  @$pb.TagNumber(7)
  set closePrice($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasClosePrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearClosePrice() => clearField(7);

  @$pb.TagNumber(8)
  BuySell get buySell => $_getN(7);
  @$pb.TagNumber(8)
  set buySell(BuySell v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBuySell() => $_has(7);
  @$pb.TagNumber(8)
  void clearBuySell() => clearField(8);
}

class Chart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Chart', package: const $pb.PackageName('com.firelib'), createEmptyInstance: create)
    ..pc<DatePoint>(1, 'points', $pb.PbFieldType.PM, subBuilder: DatePoint.create)
    ..aOS(2, 'name')
    ..e<Chart_ChartType>(3, 'chartType', $pb.PbFieldType.OE, protoName: 'chartType', defaultOrMaker: Chart_ChartType.Bar, valueOf: Chart_ChartType.valueOf, enumValues: Chart_ChartType.values)
    ..hasRequiredFields = false
  ;

  Chart._() : super();
  factory Chart() => create();
  factory Chart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Chart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Chart clone() => Chart()..mergeFromMessage(this);
  Chart copyWith(void Function(Chart) updates) => super.copyWith((message) => updates(message as Chart));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Chart create() => Chart._();
  Chart createEmptyInstance() => create();
  static $pb.PbList<Chart> createRepeated() => $pb.PbList<Chart>();
  @$core.pragma('dart2js:noInline')
  static Chart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Chart>(create);
  static Chart _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DatePoint> get points => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  Chart_ChartType get chartType => $_getN(2);
  @$pb.TagNumber(3)
  set chartType(Chart_ChartType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChartType() => $_has(2);
  @$pb.TagNumber(3)
  void clearChartType() => clearField(3);
}

class DatePoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DatePoint', package: const $pb.PackageName('com.firelib'), createEmptyInstance: create)
    ..aInt64(1, 'timestamp')
    ..a<$core.double>(2, 'value', $pb.PbFieldType.OD)
    ..aOS(3, 'label')
    ..hasRequiredFields = false
  ;

  DatePoint._() : super();
  factory DatePoint() => create();
  factory DatePoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DatePoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DatePoint clone() => DatePoint()..mergeFromMessage(this);
  DatePoint copyWith(void Function(DatePoint) updates) => super.copyWith((message) => updates(message as DatePoint));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DatePoint create() => DatePoint._();
  DatePoint createEmptyInstance() => create();
  static $pb.PbList<DatePoint> createRepeated() => $pb.PbList<DatePoint>();
  @$core.pragma('dart2js:noInline')
  static DatePoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DatePoint>(create);
  static DatePoint _defaultInstance;

  @$pb.TagNumber(1)
  Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp(Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get label => $_getSZ(2);
  @$pb.TagNumber(3)
  set label($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLabel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabel() => clearField(3);
}

class Level extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Level', package: const $pb.PackageName('com.firelib'), createEmptyInstance: create)
    ..aOM<DatePoint>(1, 'level', subBuilder: DatePoint.create)
    ..e<OhlcPeriod>(2, 'levelType', $pb.PbFieldType.OE, protoName: 'levelType', defaultOrMaker: OhlcPeriod.Day, valueOf: OhlcPeriod.valueOf, enumValues: OhlcPeriod.values)
    ..hasRequiredFields = false
  ;

  Level._() : super();
  factory Level() => create();
  factory Level.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Level.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Level clone() => Level()..mergeFromMessage(this);
  Level copyWith(void Function(Level) updates) => super.copyWith((message) => updates(message as Level));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Level create() => Level._();
  Level createEmptyInstance() => create();
  static $pb.PbList<Level> createRepeated() => $pb.PbList<Level>();
  @$core.pragma('dart2js:noInline')
  static Level getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Level>(create);
  static Level _defaultInstance;

  @$pb.TagNumber(1)
  DatePoint get level => $_getN(0);
  @$pb.TagNumber(1)
  set level(DatePoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevel() => clearField(1);
  @$pb.TagNumber(1)
  DatePoint ensureLevel() => $_ensure(0);

  @$pb.TagNumber(2)
  OhlcPeriod get levelType => $_getN(1);
  @$pb.TagNumber(2)
  set levelType(OhlcPeriod v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLevelType() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevelType() => clearField(2);
}

class Levels extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Levels', package: const $pb.PackageName('com.firelib'), createEmptyInstance: create)
    ..aOS(1, 'ticker')
    ..pc<Level>(2, 'levels', $pb.PbFieldType.PM, subBuilder: Level.create)
    ..hasRequiredFields = false
  ;

  Levels._() : super();
  factory Levels() => create();
  factory Levels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Levels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Levels clone() => Levels()..mergeFromMessage(this);
  Levels copyWith(void Function(Levels) updates) => super.copyWith((message) => updates(message as Levels));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Levels create() => Levels._();
  Levels createEmptyInstance() => create();
  static $pb.PbList<Levels> createRepeated() => $pb.PbList<Levels>();
  @$core.pragma('dart2js:noInline')
  static Levels getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Levels>(create);
  static Levels _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ticker => $_getSZ(0);
  @$pb.TagNumber(1)
  set ticker($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTicker() => $_has(0);
  @$pb.TagNumber(1)
  void clearTicker() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Level> get levels => $_getList(1);
}

class OhlcTO extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OhlcTO', package: const $pb.PackageName('com.firelib'), createEmptyInstance: create)
    ..a<$core.double>(1, 'open', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'high', $pb.PbFieldType.OD)
    ..a<$core.double>(3, 'low', $pb.PbFieldType.OD)
    ..a<$core.double>(4, 'close', $pb.PbFieldType.OD)
    ..aOS(5, 'ticker')
    ..aInt64(6, 'timestamp')
    ..e<OhlcPeriod>(7, 'period', $pb.PbFieldType.OE, defaultOrMaker: OhlcPeriod.Day, valueOf: OhlcPeriod.valueOf, enumValues: OhlcPeriod.values)
    ..hasRequiredFields = false
  ;

  OhlcTO._() : super();
  factory OhlcTO() => create();
  factory OhlcTO.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OhlcTO.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OhlcTO clone() => OhlcTO()..mergeFromMessage(this);
  OhlcTO copyWith(void Function(OhlcTO) updates) => super.copyWith((message) => updates(message as OhlcTO));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OhlcTO create() => OhlcTO._();
  OhlcTO createEmptyInstance() => create();
  static $pb.PbList<OhlcTO> createRepeated() => $pb.PbList<OhlcTO>();
  @$core.pragma('dart2js:noInline')
  static OhlcTO getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OhlcTO>(create);
  static OhlcTO _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get open => $_getN(0);
  @$pb.TagNumber(1)
  set open($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpen() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpen() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get high => $_getN(1);
  @$pb.TagNumber(2)
  set high($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHigh() => $_has(1);
  @$pb.TagNumber(2)
  void clearHigh() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get low => $_getN(2);
  @$pb.TagNumber(3)
  set low($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLow() => $_has(2);
  @$pb.TagNumber(3)
  void clearLow() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get close => $_getN(3);
  @$pb.TagNumber(4)
  set close($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClose() => $_has(3);
  @$pb.TagNumber(4)
  void clearClose() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get ticker => $_getSZ(4);
  @$pb.TagNumber(5)
  set ticker($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTicker() => $_has(4);
  @$pb.TagNumber(5)
  void clearTicker() => clearField(5);

  @$pb.TagNumber(6)
  Int64 get timestamp => $_getI64(5);
  @$pb.TagNumber(6)
  set timestamp(Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);

  @$pb.TagNumber(7)
  OhlcPeriod get period => $_getN(6);
  @$pb.TagNumber(7)
  set period(OhlcPeriod v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPeriod() => $_has(6);
  @$pb.TagNumber(7)
  void clearPeriod() => clearField(7);
}

