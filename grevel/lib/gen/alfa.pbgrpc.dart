///
//  Generated code. Do not modify.
//  source: alfa.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'domain.pb.dart' as $0;
export 'alfa.pb.dart';

class StratServiceClient extends $grpc.Client {
  static final _$getStrats = $grpc.ClientMethod<$0.Empty, $0.StratDescription>(
      '/com.firelib.StratService/GetStrats',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StratDescription.fromBuffer(value));
  static final _$getLevels = $grpc.ClientMethod<$0.Empty, $0.Levels>(
      '/com.firelib.StratService/GetLevels',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Levels.fromBuffer(value));
  static final _$priceSubscribe =
      $grpc.ClientMethod<$0.HistoryRequest, $0.OhlcTO>(
          '/com.firelib.StratService/PriceSubscribe',
          ($0.HistoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.OhlcTO.fromBuffer(value));
  static final _$intradaySubscribe = $grpc.ClientMethod<$0.Empty, $0.OhlcTO>(
      '/com.firelib.StratService/IntradaySubscribe',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OhlcTO.fromBuffer(value));

  StratServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$0.StratDescription> getStrats($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getStrats, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<$0.Levels> getLevels($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getLevels, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<$0.OhlcTO> priceSubscribe($0.HistoryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$priceSubscribe, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<$0.OhlcTO> intradaySubscribe($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$intradaySubscribe, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class StratServiceBase extends $grpc.Service {
  $core.String get $name => 'com.firelib.StratService';

  StratServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.StratDescription>(
        'GetStrats',
        getStrats_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.StratDescription value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Levels>(
        'GetLevels',
        getLevels_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Levels value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HistoryRequest, $0.OhlcTO>(
        'PriceSubscribe',
        priceSubscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.HistoryRequest.fromBuffer(value),
        ($0.OhlcTO value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.OhlcTO>(
        'IntradaySubscribe',
        intradaySubscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.OhlcTO value) => value.writeToBuffer()));
  }

  $async.Stream<$0.StratDescription> getStrats_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getStrats(call, await request);
  }

  $async.Stream<$0.Levels> getLevels_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getLevels(call, await request);
  }

  $async.Stream<$0.OhlcTO> priceSubscribe_Pre(
      $grpc.ServiceCall call, $async.Future<$0.HistoryRequest> request) async* {
    yield* priceSubscribe(call, await request);
  }

  $async.Stream<$0.OhlcTO> intradaySubscribe_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* intradaySubscribe(call, await request);
  }

  $async.Stream<$0.StratDescription> getStrats(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.Levels> getLevels($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.OhlcTO> priceSubscribe(
      $grpc.ServiceCall call, $0.HistoryRequest request);
  $async.Stream<$0.OhlcTO> intradaySubscribe(
      $grpc.ServiceCall call, $0.Empty request);
}
