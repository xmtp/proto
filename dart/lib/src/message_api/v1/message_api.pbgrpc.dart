///
//  Generated code. Do not modify.
//  source: message_api/v1/message_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'message_api.pb.dart' as $0;
export 'message_api.pb.dart';

class MessageApiClient extends $grpc.Client {
  static final _$publish =
      $grpc.ClientMethod<$0.PublishRequest, $0.PublishResponse>(
          '/xmtp.message_api.v1.MessageApi/Publish',
          ($0.PublishRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PublishResponse.fromBuffer(value));
  static final _$subscribe =
      $grpc.ClientMethod<$0.SubscribeRequest, $0.Envelope>(
          '/xmtp.message_api.v1.MessageApi/Subscribe',
          ($0.SubscribeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Envelope.fromBuffer(value));
  static final _$subscribeAll =
      $grpc.ClientMethod<$0.SubscribeAllRequest, $0.Envelope>(
          '/xmtp.message_api.v1.MessageApi/SubscribeAll',
          ($0.SubscribeAllRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Envelope.fromBuffer(value));
  static final _$query = $grpc.ClientMethod<$0.QueryRequest, $0.QueryResponse>(
      '/xmtp.message_api.v1.MessageApi/Query',
      ($0.QueryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.QueryResponse.fromBuffer(value));

  MessageApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PublishResponse> publish($0.PublishRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publish, request, options: options);
  }

  $grpc.ResponseStream<$0.Envelope> subscribe($0.SubscribeRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribe, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Envelope> subscribeAll($0.SubscribeAllRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribeAll, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.QueryResponse> query($0.QueryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$query, request, options: options);
  }
}

abstract class MessageApiServiceBase extends $grpc.Service {
  $core.String get $name => 'xmtp.message_api.v1.MessageApi';

  MessageApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PublishRequest, $0.PublishResponse>(
        'Publish',
        publish_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PublishRequest.fromBuffer(value),
        ($0.PublishResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubscribeRequest, $0.Envelope>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SubscribeRequest.fromBuffer(value),
        ($0.Envelope value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubscribeAllRequest, $0.Envelope>(
        'SubscribeAll',
        subscribeAll_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.SubscribeAllRequest.fromBuffer(value),
        ($0.Envelope value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryRequest, $0.QueryResponse>(
        'Query',
        query_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryRequest.fromBuffer(value),
        ($0.QueryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PublishResponse> publish_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PublishRequest> request) async {
    return publish(call, await request);
  }

  $async.Stream<$0.Envelope> subscribe_Pre($grpc.ServiceCall call,
      $async.Future<$0.SubscribeRequest> request) async* {
    yield* subscribe(call, await request);
  }

  $async.Stream<$0.Envelope> subscribeAll_Pre($grpc.ServiceCall call,
      $async.Future<$0.SubscribeAllRequest> request) async* {
    yield* subscribeAll(call, await request);
  }

  $async.Future<$0.QueryResponse> query_Pre(
      $grpc.ServiceCall call, $async.Future<$0.QueryRequest> request) async {
    return query(call, await request);
  }

  $async.Future<$0.PublishResponse> publish(
      $grpc.ServiceCall call, $0.PublishRequest request);
  $async.Stream<$0.Envelope> subscribe(
      $grpc.ServiceCall call, $0.SubscribeRequest request);
  $async.Stream<$0.Envelope> subscribeAll(
      $grpc.ServiceCall call, $0.SubscribeAllRequest request);
  $async.Future<$0.QueryResponse> query(
      $grpc.ServiceCall call, $0.QueryRequest request);
}
