///
//  Generated code. Do not modify.
//  source: message_api/v1/message_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'message_api.pbenum.dart';

export 'message_api.pbenum.dart';

class IndexCursor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IndexCursor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'digest', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderTimeNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  IndexCursor._() : super();
  factory IndexCursor({
    $core.List<$core.int>? digest,
    $fixnum.Int64? senderTimeNs,
  }) {
    final _result = create();
    if (digest != null) {
      _result.digest = digest;
    }
    if (senderTimeNs != null) {
      _result.senderTimeNs = senderTimeNs;
    }
    return _result;
  }
  factory IndexCursor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IndexCursor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IndexCursor clone() => IndexCursor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IndexCursor copyWith(void Function(IndexCursor) updates) => super.copyWith((message) => updates(message as IndexCursor)) as IndexCursor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IndexCursor create() => IndexCursor._();
  IndexCursor createEmptyInstance() => create();
  static $pb.PbList<IndexCursor> createRepeated() => $pb.PbList<IndexCursor>();
  @$core.pragma('dart2js:noInline')
  static IndexCursor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IndexCursor>(create);
  static IndexCursor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get digest => $_getN(0);
  @$pb.TagNumber(1)
  set digest($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDigest() => $_has(0);
  @$pb.TagNumber(1)
  void clearDigest() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get senderTimeNs => $_getI64(1);
  @$pb.TagNumber(2)
  set senderTimeNs($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSenderTimeNs() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenderTimeNs() => clearField(2);
}

enum Cursor_Cursor {
  index_, 
  notSet
}

class Cursor extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Cursor_Cursor> _Cursor_CursorByTag = {
    1 : Cursor_Cursor.index_,
    0 : Cursor_Cursor.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Cursor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<IndexCursor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', subBuilder: IndexCursor.create)
    ..hasRequiredFields = false
  ;

  Cursor._() : super();
  factory Cursor({
    IndexCursor? index,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    return _result;
  }
  factory Cursor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cursor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cursor clone() => Cursor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cursor copyWith(void Function(Cursor) updates) => super.copyWith((message) => updates(message as Cursor)) as Cursor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cursor create() => Cursor._();
  Cursor createEmptyInstance() => create();
  static $pb.PbList<Cursor> createRepeated() => $pb.PbList<Cursor>();
  @$core.pragma('dart2js:noInline')
  static Cursor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cursor>(create);
  static Cursor? _defaultInstance;

  Cursor_Cursor whichCursor() => _Cursor_CursorByTag[$_whichOneof(0)]!;
  void clearCursor() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  IndexCursor get index => $_getN(0);
  @$pb.TagNumber(1)
  set index(IndexCursor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);
  @$pb.TagNumber(1)
  IndexCursor ensureIndex() => $_ensure(0);
}

class PagingInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PagingInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU3)
    ..aOM<Cursor>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cursor', subBuilder: Cursor.create)
    ..e<SortDirection>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: SortDirection.SORT_DIRECTION_UNSPECIFIED, valueOf: SortDirection.valueOf, enumValues: SortDirection.values)
    ..hasRequiredFields = false
  ;

  PagingInfo._() : super();
  factory PagingInfo({
    $core.int? limit,
    Cursor? cursor,
    SortDirection? direction,
  }) {
    final _result = create();
    if (limit != null) {
      _result.limit = limit;
    }
    if (cursor != null) {
      _result.cursor = cursor;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    return _result;
  }
  factory PagingInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PagingInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PagingInfo clone() => PagingInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PagingInfo copyWith(void Function(PagingInfo) updates) => super.copyWith((message) => updates(message as PagingInfo)) as PagingInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PagingInfo create() => PagingInfo._();
  PagingInfo createEmptyInstance() => create();
  static $pb.PbList<PagingInfo> createRepeated() => $pb.PbList<PagingInfo>();
  @$core.pragma('dart2js:noInline')
  static PagingInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PagingInfo>(create);
  static PagingInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => clearField(1);

  @$pb.TagNumber(2)
  Cursor get cursor => $_getN(1);
  @$pb.TagNumber(2)
  set cursor(Cursor v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursor() => clearField(2);
  @$pb.TagNumber(2)
  Cursor ensureCursor() => $_ensure(1);

  @$pb.TagNumber(3)
  SortDirection get direction => $_getN(2);
  @$pb.TagNumber(3)
  set direction(SortDirection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDirection() => $_has(2);
  @$pb.TagNumber(3)
  void clearDirection() => clearField(3);
}

class Envelope extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Envelope', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contentTopic')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestampNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Envelope._() : super();
  factory Envelope({
    $core.String? contentTopic,
    $fixnum.Int64? timestampNs,
    $core.List<$core.int>? message,
  }) {
    final _result = create();
    if (contentTopic != null) {
      _result.contentTopic = contentTopic;
    }
    if (timestampNs != null) {
      _result.timestampNs = timestampNs;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory Envelope.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Envelope.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Envelope clone() => Envelope()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Envelope copyWith(void Function(Envelope) updates) => super.copyWith((message) => updates(message as Envelope)) as Envelope; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Envelope create() => Envelope._();
  Envelope createEmptyInstance() => create();
  static $pb.PbList<Envelope> createRepeated() => $pb.PbList<Envelope>();
  @$core.pragma('dart2js:noInline')
  static Envelope getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Envelope>(create);
  static Envelope? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contentTopic => $_getSZ(0);
  @$pb.TagNumber(1)
  set contentTopic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContentTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearContentTopic() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampNs => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampNs($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampNs() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampNs() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get message => $_getN(2);
  @$pb.TagNumber(3)
  set message($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class PublishRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublishRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..pc<Envelope>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'envelopes', $pb.PbFieldType.PM, subBuilder: Envelope.create)
    ..hasRequiredFields = false
  ;

  PublishRequest._() : super();
  factory PublishRequest({
    $core.Iterable<Envelope>? envelopes,
  }) {
    final _result = create();
    if (envelopes != null) {
      _result.envelopes.addAll(envelopes);
    }
    return _result;
  }
  factory PublishRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishRequest clone() => PublishRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishRequest copyWith(void Function(PublishRequest) updates) => super.copyWith((message) => updates(message as PublishRequest)) as PublishRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishRequest create() => PublishRequest._();
  PublishRequest createEmptyInstance() => create();
  static $pb.PbList<PublishRequest> createRepeated() => $pb.PbList<PublishRequest>();
  @$core.pragma('dart2js:noInline')
  static PublishRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublishRequest>(create);
  static PublishRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Envelope> get envelopes => $_getList(0);
}

class PublishResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublishResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PublishResponse._() : super();
  factory PublishResponse() => create();
  factory PublishResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishResponse clone() => PublishResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishResponse copyWith(void Function(PublishResponse) updates) => super.copyWith((message) => updates(message as PublishResponse)) as PublishResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishResponse create() => PublishResponse._();
  PublishResponse createEmptyInstance() => create();
  static $pb.PbList<PublishResponse> createRepeated() => $pb.PbList<PublishResponse>();
  @$core.pragma('dart2js:noInline')
  static PublishResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublishResponse>(create);
  static PublishResponse? _defaultInstance;
}

class SubscribeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscribeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contentTopics')
    ..hasRequiredFields = false
  ;

  SubscribeRequest._() : super();
  factory SubscribeRequest({
    $core.Iterable<$core.String>? contentTopics,
  }) {
    final _result = create();
    if (contentTopics != null) {
      _result.contentTopics.addAll(contentTopics);
    }
    return _result;
  }
  factory SubscribeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeRequest clone() => SubscribeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeRequest copyWith(void Function(SubscribeRequest) updates) => super.copyWith((message) => updates(message as SubscribeRequest)) as SubscribeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeRequest create() => SubscribeRequest._();
  SubscribeRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeRequest> createRepeated() => $pb.PbList<SubscribeRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeRequest>(create);
  static SubscribeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get contentTopics => $_getList(0);
}

class SubscribeAllRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscribeAllRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SubscribeAllRequest._() : super();
  factory SubscribeAllRequest() => create();
  factory SubscribeAllRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeAllRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeAllRequest clone() => SubscribeAllRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeAllRequest copyWith(void Function(SubscribeAllRequest) updates) => super.copyWith((message) => updates(message as SubscribeAllRequest)) as SubscribeAllRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeAllRequest create() => SubscribeAllRequest._();
  SubscribeAllRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeAllRequest> createRepeated() => $pb.PbList<SubscribeAllRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeAllRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeAllRequest>(create);
  static SubscribeAllRequest? _defaultInstance;
}

class QueryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contentTopics')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTimeNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTimeNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<PagingInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagingInfo', subBuilder: PagingInfo.create)
    ..hasRequiredFields = false
  ;

  QueryRequest._() : super();
  factory QueryRequest({
    $core.Iterable<$core.String>? contentTopics,
    $fixnum.Int64? startTimeNs,
    $fixnum.Int64? endTimeNs,
    PagingInfo? pagingInfo,
  }) {
    final _result = create();
    if (contentTopics != null) {
      _result.contentTopics.addAll(contentTopics);
    }
    if (startTimeNs != null) {
      _result.startTimeNs = startTimeNs;
    }
    if (endTimeNs != null) {
      _result.endTimeNs = endTimeNs;
    }
    if (pagingInfo != null) {
      _result.pagingInfo = pagingInfo;
    }
    return _result;
  }
  factory QueryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryRequest clone() => QueryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryRequest copyWith(void Function(QueryRequest) updates) => super.copyWith((message) => updates(message as QueryRequest)) as QueryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryRequest create() => QueryRequest._();
  QueryRequest createEmptyInstance() => create();
  static $pb.PbList<QueryRequest> createRepeated() => $pb.PbList<QueryRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryRequest>(create);
  static QueryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get contentTopics => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get startTimeNs => $_getI64(1);
  @$pb.TagNumber(2)
  set startTimeNs($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTimeNs() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTimeNs() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endTimeNs => $_getI64(2);
  @$pb.TagNumber(3)
  set endTimeNs($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndTimeNs() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTimeNs() => clearField(3);

  @$pb.TagNumber(4)
  PagingInfo get pagingInfo => $_getN(3);
  @$pb.TagNumber(4)
  set pagingInfo(PagingInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPagingInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearPagingInfo() => clearField(4);
  @$pb.TagNumber(4)
  PagingInfo ensurePagingInfo() => $_ensure(3);
}

class QueryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..pc<Envelope>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'envelopes', $pb.PbFieldType.PM, subBuilder: Envelope.create)
    ..aOM<PagingInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagingInfo', subBuilder: PagingInfo.create)
    ..hasRequiredFields = false
  ;

  QueryResponse._() : super();
  factory QueryResponse({
    $core.Iterable<Envelope>? envelopes,
    PagingInfo? pagingInfo,
  }) {
    final _result = create();
    if (envelopes != null) {
      _result.envelopes.addAll(envelopes);
    }
    if (pagingInfo != null) {
      _result.pagingInfo = pagingInfo;
    }
    return _result;
  }
  factory QueryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryResponse clone() => QueryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryResponse copyWith(void Function(QueryResponse) updates) => super.copyWith((message) => updates(message as QueryResponse)) as QueryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryResponse create() => QueryResponse._();
  QueryResponse createEmptyInstance() => create();
  static $pb.PbList<QueryResponse> createRepeated() => $pb.PbList<QueryResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryResponse>(create);
  static QueryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Envelope> get envelopes => $_getList(0);

  @$pb.TagNumber(2)
  PagingInfo get pagingInfo => $_getN(1);
  @$pb.TagNumber(2)
  set pagingInfo(PagingInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagingInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagingInfo() => clearField(2);
  @$pb.TagNumber(2)
  PagingInfo ensurePagingInfo() => $_ensure(1);
}

