///
//  Generated code. Do not modify.
//  source: message_contents/xmtp_envelope.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'public_key.pb.dart' as $1;
import 'signature.pb.dart' as $0;
import 'ciphertext.pb.dart' as $2;

import 'xmtp_envelope.pbenum.dart';

export 'xmtp_envelope.pbenum.dart';

class ContentTypeId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContentTypeId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authorityId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'typeId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'versionMajor', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'versionMinor', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ContentTypeId._() : super();
  factory ContentTypeId({
    $core.String? authorityId,
    $core.String? typeId,
    $core.int? versionMajor,
    $core.int? versionMinor,
  }) {
    final _result = create();
    if (authorityId != null) {
      _result.authorityId = authorityId;
    }
    if (typeId != null) {
      _result.typeId = typeId;
    }
    if (versionMajor != null) {
      _result.versionMajor = versionMajor;
    }
    if (versionMinor != null) {
      _result.versionMinor = versionMinor;
    }
    return _result;
  }
  factory ContentTypeId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContentTypeId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContentTypeId clone() => ContentTypeId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContentTypeId copyWith(void Function(ContentTypeId) updates) => super.copyWith((message) => updates(message as ContentTypeId)) as ContentTypeId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContentTypeId create() => ContentTypeId._();
  ContentTypeId createEmptyInstance() => create();
  static $pb.PbList<ContentTypeId> createRepeated() => $pb.PbList<ContentTypeId>();
  @$core.pragma('dart2js:noInline')
  static ContentTypeId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContentTypeId>(create);
  static ContentTypeId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get authorityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set authorityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthorityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthorityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get typeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set typeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTypeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTypeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get versionMajor => $_getIZ(2);
  @$pb.TagNumber(3)
  set versionMajor($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersionMajor() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersionMajor() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get versionMinor => $_getIZ(3);
  @$pb.TagNumber(4)
  set versionMinor($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersionMinor() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersionMinor() => clearField(4);
}

class EncodedContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EncodedContent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOM<ContentTypeId>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', subBuilder: ContentTypeId.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameters', entryClassName: 'EncodedContent.ParametersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('xmtp.message_contents'))
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fallback')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', $pb.PbFieldType.OY)
    ..e<Compression>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compression', $pb.PbFieldType.OE, defaultOrMaker: Compression.COMPRESSION_DEFLATE, valueOf: Compression.valueOf, enumValues: Compression.values)
    ..hasRequiredFields = false
  ;

  EncodedContent._() : super();
  factory EncodedContent({
    ContentTypeId? type,
    $core.Map<$core.String, $core.String>? parameters,
    $core.String? fallback,
    $core.List<$core.int>? content,
    Compression? compression,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (parameters != null) {
      _result.parameters.addAll(parameters);
    }
    if (fallback != null) {
      _result.fallback = fallback;
    }
    if (content != null) {
      _result.content = content;
    }
    if (compression != null) {
      _result.compression = compression;
    }
    return _result;
  }
  factory EncodedContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncodedContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncodedContent clone() => EncodedContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncodedContent copyWith(void Function(EncodedContent) updates) => super.copyWith((message) => updates(message as EncodedContent)) as EncodedContent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EncodedContent create() => EncodedContent._();
  EncodedContent createEmptyInstance() => create();
  static $pb.PbList<EncodedContent> createRepeated() => $pb.PbList<EncodedContent>();
  @$core.pragma('dart2js:noInline')
  static EncodedContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncodedContent>(create);
  static EncodedContent? _defaultInstance;

  @$pb.TagNumber(1)
  ContentTypeId get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ContentTypeId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
  @$pb.TagNumber(1)
  ContentTypeId ensureType() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get parameters => $_getMap(1);

  @$pb.TagNumber(3)
  $core.String get fallback => $_getSZ(2);
  @$pb.TagNumber(3)
  set fallback($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFallback() => $_has(2);
  @$pb.TagNumber(3)
  void clearFallback() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get content => $_getN(3);
  @$pb.TagNumber(4)
  set content($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  Compression get compression => $_getN(4);
  @$pb.TagNumber(5)
  set compression(Compression v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCompression() => $_has(4);
  @$pb.TagNumber(5)
  void clearCompression() => clearField(5);
}

class SignedContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignedContent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', $pb.PbFieldType.OY)
    ..aOM<$1.SignedPublicKeyBundle>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender', subBuilder: $1.SignedPublicKeyBundle.create)
    ..aOM<$0.Signature>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', subBuilder: $0.Signature.create)
    ..hasRequiredFields = false
  ;

  SignedContent._() : super();
  factory SignedContent({
    $core.List<$core.int>? payload,
    $1.SignedPublicKeyBundle? sender,
    $0.Signature? signature,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
    }
    if (sender != null) {
      _result.sender = sender;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory SignedContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignedContent clone() => SignedContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignedContent copyWith(void Function(SignedContent) updates) => super.copyWith((message) => updates(message as SignedContent)) as SignedContent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignedContent create() => SignedContent._();
  SignedContent createEmptyInstance() => create();
  static $pb.PbList<SignedContent> createRepeated() => $pb.PbList<SignedContent>();
  @$core.pragma('dart2js:noInline')
  static SignedContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignedContent>(create);
  static SignedContent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);

  @$pb.TagNumber(2)
  $1.SignedPublicKeyBundle get sender => $_getN(1);
  @$pb.TagNumber(2)
  set sender($1.SignedPublicKeyBundle v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);
  @$pb.TagNumber(2)
  $1.SignedPublicKeyBundle ensureSender() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Signature get signature => $_getN(2);
  @$pb.TagNumber(3)
  set signature($0.Signature v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSignature() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignature() => clearField(3);
  @$pb.TagNumber(3)
  $0.Signature ensureSignature() => $_ensure(2);
}

class MessageHeaderV1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageHeaderV1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOM<$1.PublicKeyBundle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender', subBuilder: $1.PublicKeyBundle.create)
    ..aOM<$1.PublicKeyBundle>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipient', subBuilder: $1.PublicKeyBundle.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MessageHeaderV1._() : super();
  factory MessageHeaderV1({
    $1.PublicKeyBundle? sender,
    $1.PublicKeyBundle? recipient,
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (recipient != null) {
      _result.recipient = recipient;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory MessageHeaderV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageHeaderV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageHeaderV1 clone() => MessageHeaderV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageHeaderV1 copyWith(void Function(MessageHeaderV1) updates) => super.copyWith((message) => updates(message as MessageHeaderV1)) as MessageHeaderV1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageHeaderV1 create() => MessageHeaderV1._();
  MessageHeaderV1 createEmptyInstance() => create();
  static $pb.PbList<MessageHeaderV1> createRepeated() => $pb.PbList<MessageHeaderV1>();
  @$core.pragma('dart2js:noInline')
  static MessageHeaderV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageHeaderV1>(create);
  static MessageHeaderV1? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PublicKeyBundle get sender => $_getN(0);
  @$pb.TagNumber(1)
  set sender($1.PublicKeyBundle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);
  @$pb.TagNumber(1)
  $1.PublicKeyBundle ensureSender() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.PublicKeyBundle get recipient => $_getN(1);
  @$pb.TagNumber(2)
  set recipient($1.PublicKeyBundle v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecipient() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecipient() => clearField(2);
  @$pb.TagNumber(2)
  $1.PublicKeyBundle ensureRecipient() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
}

class MessageV1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageV1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headerBytes', $pb.PbFieldType.OY)
    ..aOM<$2.Ciphertext>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciphertext', subBuilder: $2.Ciphertext.create)
    ..hasRequiredFields = false
  ;

  MessageV1._() : super();
  factory MessageV1({
    $core.List<$core.int>? headerBytes,
    $2.Ciphertext? ciphertext,
  }) {
    final _result = create();
    if (headerBytes != null) {
      _result.headerBytes = headerBytes;
    }
    if (ciphertext != null) {
      _result.ciphertext = ciphertext;
    }
    return _result;
  }
  factory MessageV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageV1 clone() => MessageV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageV1 copyWith(void Function(MessageV1) updates) => super.copyWith((message) => updates(message as MessageV1)) as MessageV1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageV1 create() => MessageV1._();
  MessageV1 createEmptyInstance() => create();
  static $pb.PbList<MessageV1> createRepeated() => $pb.PbList<MessageV1>();
  @$core.pragma('dart2js:noInline')
  static MessageV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageV1>(create);
  static MessageV1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get headerBytes => $_getN(0);
  @$pb.TagNumber(1)
  set headerBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeaderBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeaderBytes() => clearField(1);

  @$pb.TagNumber(2)
  $2.Ciphertext get ciphertext => $_getN(1);
  @$pb.TagNumber(2)
  set ciphertext($2.Ciphertext v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCiphertext() => $_has(1);
  @$pb.TagNumber(2)
  void clearCiphertext() => clearField(2);
  @$pb.TagNumber(2)
  $2.Ciphertext ensureCiphertext() => $_ensure(1);
}

class MessageHeaderV2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageHeaderV2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..hasRequiredFields = false
  ;

  MessageHeaderV2._() : super();
  factory MessageHeaderV2({
    $fixnum.Int64? createdNs,
    $core.String? topic,
  }) {
    final _result = create();
    if (createdNs != null) {
      _result.createdNs = createdNs;
    }
    if (topic != null) {
      _result.topic = topic;
    }
    return _result;
  }
  factory MessageHeaderV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageHeaderV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageHeaderV2 clone() => MessageHeaderV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageHeaderV2 copyWith(void Function(MessageHeaderV2) updates) => super.copyWith((message) => updates(message as MessageHeaderV2)) as MessageHeaderV2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageHeaderV2 create() => MessageHeaderV2._();
  MessageHeaderV2 createEmptyInstance() => create();
  static $pb.PbList<MessageHeaderV2> createRepeated() => $pb.PbList<MessageHeaderV2>();
  @$core.pragma('dart2js:noInline')
  static MessageHeaderV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageHeaderV2>(create);
  static MessageHeaderV2? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get createdNs => $_getI64(0);
  @$pb.TagNumber(1)
  set createdNs($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedNs() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedNs() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get topic => $_getSZ(1);
  @$pb.TagNumber(2)
  set topic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopic() => clearField(2);
}

class MessageV2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageV2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headerBytes', $pb.PbFieldType.OY)
    ..aOM<$2.Ciphertext>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciphertext', subBuilder: $2.Ciphertext.create)
    ..hasRequiredFields = false
  ;

  MessageV2._() : super();
  factory MessageV2({
    $core.List<$core.int>? headerBytes,
    $2.Ciphertext? ciphertext,
  }) {
    final _result = create();
    if (headerBytes != null) {
      _result.headerBytes = headerBytes;
    }
    if (ciphertext != null) {
      _result.ciphertext = ciphertext;
    }
    return _result;
  }
  factory MessageV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageV2 clone() => MessageV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageV2 copyWith(void Function(MessageV2) updates) => super.copyWith((message) => updates(message as MessageV2)) as MessageV2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageV2 create() => MessageV2._();
  MessageV2 createEmptyInstance() => create();
  static $pb.PbList<MessageV2> createRepeated() => $pb.PbList<MessageV2>();
  @$core.pragma('dart2js:noInline')
  static MessageV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageV2>(create);
  static MessageV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get headerBytes => $_getN(0);
  @$pb.TagNumber(1)
  set headerBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeaderBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeaderBytes() => clearField(1);

  @$pb.TagNumber(2)
  $2.Ciphertext get ciphertext => $_getN(1);
  @$pb.TagNumber(2)
  set ciphertext($2.Ciphertext v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCiphertext() => $_has(1);
  @$pb.TagNumber(2)
  void clearCiphertext() => clearField(2);
  @$pb.TagNumber(2)
  $2.Ciphertext ensureCiphertext() => $_ensure(1);
}

enum Message_Version {
  v1, 
  v2, 
  notSet
}

class Message extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Message_Version> _Message_VersionByTag = {
    1 : Message_Version.v1,
    2 : Message_Version.v2,
    0 : Message_Version.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<MessageV1>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v1', subBuilder: MessageV1.create)
    ..aOM<MessageV2>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v2', subBuilder: MessageV2.create)
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    MessageV1? v1,
    MessageV2? v2,
  }) {
    final _result = create();
    if (v1 != null) {
      _result.v1 = v1;
    }
    if (v2 != null) {
      _result.v2 = v2;
    }
    return _result;
  }
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  Message_Version whichVersion() => _Message_VersionByTag[$_whichOneof(0)]!;
  void clearVersion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  MessageV1 get v1 => $_getN(0);
  @$pb.TagNumber(1)
  set v1(MessageV1 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasV1() => $_has(0);
  @$pb.TagNumber(1)
  void clearV1() => clearField(1);
  @$pb.TagNumber(1)
  MessageV1 ensureV1() => $_ensure(0);

  @$pb.TagNumber(2)
  MessageV2 get v2 => $_getN(1);
  @$pb.TagNumber(2)
  set v2(MessageV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasV2() => $_has(1);
  @$pb.TagNumber(2)
  void clearV2() => clearField(2);
  @$pb.TagNumber(2)
  MessageV2 ensureV2() => $_ensure(1);
}

