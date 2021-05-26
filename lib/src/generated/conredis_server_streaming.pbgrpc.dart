///
//  Generated code. Do not modify.
//  source: conredis_server_streaming.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'conredis_server_streaming.pb.dart' as $0;
export 'conredis_server_streaming.pb.dart';

class serviceClient extends $grpc.Client {
  static final _$redisService = $grpc.ClientMethod<$0.News, $0.Result>(
      '/conredis.service/RedisService',
      ($0.News value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Result.fromBuffer(value));

  serviceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Result> redisService($0.News request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$redisService, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class serviceServiceBase extends $grpc.Service {
  $core.String get $name => 'conredis.service';

  serviceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.News, $0.Result>(
        'RedisService',
        redisService_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.News.fromBuffer(value),
        ($0.Result value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Result> redisService_Pre(
      $grpc.ServiceCall call, $async.Future<$0.News> request) async* {
    yield* redisService(call, await request);
  }

  $async.Stream<$0.Result> redisService(
      $grpc.ServiceCall call, $0.News request);
}
