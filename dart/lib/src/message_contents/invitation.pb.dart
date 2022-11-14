///
//  Generated code. Do not modify.
//  source: message_contents/invitation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'public_key.pb.dart' as $1;
import 'ciphertext.pb.dart' as $2;

class InvitationV1_Aes256gcmHkdfsha256 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InvitationV1.Aes256gcmHkdfsha256', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyMaterial', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  InvitationV1_Aes256gcmHkdfsha256._() : super();
  factory InvitationV1_Aes256gcmHkdfsha256({
    $core.List<$core.int>? keyMaterial,
  }) {
    final _result = create();
    if (keyMaterial != null) {
      _result.keyMaterial = keyMaterial;
    }
    return _result;
  }
  factory InvitationV1_Aes256gcmHkdfsha256.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvitationV1_Aes256gcmHkdfsha256.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvitationV1_Aes256gcmHkdfsha256 clone() => InvitationV1_Aes256gcmHkdfsha256()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvitationV1_Aes256gcmHkdfsha256 copyWith(void Function(InvitationV1_Aes256gcmHkdfsha256) updates) => super.copyWith((message) => updates(message as InvitationV1_Aes256gcmHkdfsha256)) as InvitationV1_Aes256gcmHkdfsha256; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvitationV1_Aes256gcmHkdfsha256 create() => InvitationV1_Aes256gcmHkdfsha256._();
  InvitationV1_Aes256gcmHkdfsha256 createEmptyInstance() => create();
  static $pb.PbList<InvitationV1_Aes256gcmHkdfsha256> createRepeated() => $pb.PbList<InvitationV1_Aes256gcmHkdfsha256>();
  @$core.pragma('dart2js:noInline')
  static InvitationV1_Aes256gcmHkdfsha256 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvitationV1_Aes256gcmHkdfsha256>(create);
  static InvitationV1_Aes256gcmHkdfsha256? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get keyMaterial => $_getN(0);
  @$pb.TagNumber(1)
  set keyMaterial($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyMaterial() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyMaterial() => clearField(1);
}

class InvitationV1_Context extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InvitationV1.Context', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationId')
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', entryClassName: 'InvitationV1.Context.MetadataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('xmtp.message_contents'))
    ..hasRequiredFields = false
  ;

  InvitationV1_Context._() : super();
  factory InvitationV1_Context({
    $core.String? conversationId,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (conversationId != null) {
      _result.conversationId = conversationId;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory InvitationV1_Context.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvitationV1_Context.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvitationV1_Context clone() => InvitationV1_Context()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvitationV1_Context copyWith(void Function(InvitationV1_Context) updates) => super.copyWith((message) => updates(message as InvitationV1_Context)) as InvitationV1_Context; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvitationV1_Context create() => InvitationV1_Context._();
  InvitationV1_Context createEmptyInstance() => create();
  static $pb.PbList<InvitationV1_Context> createRepeated() => $pb.PbList<InvitationV1_Context>();
  @$core.pragma('dart2js:noInline')
  static InvitationV1_Context getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvitationV1_Context>(create);
  static InvitationV1_Context? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get conversationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set conversationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConversationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConversationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(1);
}

enum InvitationV1_Encryption {
  aes256GcmHkdfSha256, 
  notSet
}

class InvitationV1 extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, InvitationV1_Encryption> _InvitationV1_EncryptionByTag = {
    3 : InvitationV1_Encryption.aes256GcmHkdfSha256,
    0 : InvitationV1_Encryption.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InvitationV1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [3])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..aOM<InvitationV1_Context>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'context', subBuilder: InvitationV1_Context.create)
    ..aOM<InvitationV1_Aes256gcmHkdfsha256>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aes256GcmHkdfSha256', subBuilder: InvitationV1_Aes256gcmHkdfsha256.create)
    ..hasRequiredFields = false
  ;

  InvitationV1._() : super();
  factory InvitationV1({
    $core.String? topic,
    InvitationV1_Context? context,
    InvitationV1_Aes256gcmHkdfsha256? aes256GcmHkdfSha256,
  }) {
    final _result = create();
    if (topic != null) {
      _result.topic = topic;
    }
    if (context != null) {
      _result.context = context;
    }
    if (aes256GcmHkdfSha256 != null) {
      _result.aes256GcmHkdfSha256 = aes256GcmHkdfSha256;
    }
    return _result;
  }
  factory InvitationV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvitationV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvitationV1 clone() => InvitationV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvitationV1 copyWith(void Function(InvitationV1) updates) => super.copyWith((message) => updates(message as InvitationV1)) as InvitationV1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvitationV1 create() => InvitationV1._();
  InvitationV1 createEmptyInstance() => create();
  static $pb.PbList<InvitationV1> createRepeated() => $pb.PbList<InvitationV1>();
  @$core.pragma('dart2js:noInline')
  static InvitationV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvitationV1>(create);
  static InvitationV1? _defaultInstance;

  InvitationV1_Encryption whichEncryption() => _InvitationV1_EncryptionByTag[$_whichOneof(0)]!;
  void clearEncryption() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(1)
  set topic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);

  @$pb.TagNumber(2)
  InvitationV1_Context get context => $_getN(1);
  @$pb.TagNumber(2)
  set context(InvitationV1_Context v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);
  @$pb.TagNumber(2)
  InvitationV1_Context ensureContext() => $_ensure(1);

  @$pb.TagNumber(3)
  InvitationV1_Aes256gcmHkdfsha256 get aes256GcmHkdfSha256 => $_getN(2);
  @$pb.TagNumber(3)
  set aes256GcmHkdfSha256(InvitationV1_Aes256gcmHkdfsha256 v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAes256GcmHkdfSha256() => $_has(2);
  @$pb.TagNumber(3)
  void clearAes256GcmHkdfSha256() => clearField(3);
  @$pb.TagNumber(3)
  InvitationV1_Aes256gcmHkdfsha256 ensureAes256GcmHkdfSha256() => $_ensure(2);
}

class SealedInvitationHeaderV1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SealedInvitationHeaderV1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOM<$1.SignedPublicKeyBundle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender', subBuilder: $1.SignedPublicKeyBundle.create)
    ..aOM<$1.SignedPublicKeyBundle>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipient', subBuilder: $1.SignedPublicKeyBundle.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SealedInvitationHeaderV1._() : super();
  factory SealedInvitationHeaderV1({
    $1.SignedPublicKeyBundle? sender,
    $1.SignedPublicKeyBundle? recipient,
    $fixnum.Int64? createdNs,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (recipient != null) {
      _result.recipient = recipient;
    }
    if (createdNs != null) {
      _result.createdNs = createdNs;
    }
    return _result;
  }
  factory SealedInvitationHeaderV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SealedInvitationHeaderV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SealedInvitationHeaderV1 clone() => SealedInvitationHeaderV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SealedInvitationHeaderV1 copyWith(void Function(SealedInvitationHeaderV1) updates) => super.copyWith((message) => updates(message as SealedInvitationHeaderV1)) as SealedInvitationHeaderV1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SealedInvitationHeaderV1 create() => SealedInvitationHeaderV1._();
  SealedInvitationHeaderV1 createEmptyInstance() => create();
  static $pb.PbList<SealedInvitationHeaderV1> createRepeated() => $pb.PbList<SealedInvitationHeaderV1>();
  @$core.pragma('dart2js:noInline')
  static SealedInvitationHeaderV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SealedInvitationHeaderV1>(create);
  static SealedInvitationHeaderV1? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SignedPublicKeyBundle get sender => $_getN(0);
  @$pb.TagNumber(1)
  set sender($1.SignedPublicKeyBundle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);
  @$pb.TagNumber(1)
  $1.SignedPublicKeyBundle ensureSender() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.SignedPublicKeyBundle get recipient => $_getN(1);
  @$pb.TagNumber(2)
  set recipient($1.SignedPublicKeyBundle v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecipient() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecipient() => clearField(2);
  @$pb.TagNumber(2)
  $1.SignedPublicKeyBundle ensureRecipient() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createdNs => $_getI64(2);
  @$pb.TagNumber(3)
  set createdNs($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedNs() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedNs() => clearField(3);
}

class SealedInvitationV1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SealedInvitationV1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headerBytes', $pb.PbFieldType.OY)
    ..aOM<$2.Ciphertext>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciphertext', subBuilder: $2.Ciphertext.create)
    ..hasRequiredFields = false
  ;

  SealedInvitationV1._() : super();
  factory SealedInvitationV1({
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
  factory SealedInvitationV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SealedInvitationV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SealedInvitationV1 clone() => SealedInvitationV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SealedInvitationV1 copyWith(void Function(SealedInvitationV1) updates) => super.copyWith((message) => updates(message as SealedInvitationV1)) as SealedInvitationV1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SealedInvitationV1 create() => SealedInvitationV1._();
  SealedInvitationV1 createEmptyInstance() => create();
  static $pb.PbList<SealedInvitationV1> createRepeated() => $pb.PbList<SealedInvitationV1>();
  @$core.pragma('dart2js:noInline')
  static SealedInvitationV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SealedInvitationV1>(create);
  static SealedInvitationV1? _defaultInstance;

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

enum SealedInvitation_Version {
  v1, 
  notSet
}

class SealedInvitation extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SealedInvitation_Version> _SealedInvitation_VersionByTag = {
    1 : SealedInvitation_Version.v1,
    0 : SealedInvitation_Version.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SealedInvitation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<SealedInvitationV1>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v1', subBuilder: SealedInvitationV1.create)
    ..hasRequiredFields = false
  ;

  SealedInvitation._() : super();
  factory SealedInvitation({
    SealedInvitationV1? v1,
  }) {
    final _result = create();
    if (v1 != null) {
      _result.v1 = v1;
    }
    return _result;
  }
  factory SealedInvitation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SealedInvitation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SealedInvitation clone() => SealedInvitation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SealedInvitation copyWith(void Function(SealedInvitation) updates) => super.copyWith((message) => updates(message as SealedInvitation)) as SealedInvitation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SealedInvitation create() => SealedInvitation._();
  SealedInvitation createEmptyInstance() => create();
  static $pb.PbList<SealedInvitation> createRepeated() => $pb.PbList<SealedInvitation>();
  @$core.pragma('dart2js:noInline')
  static SealedInvitation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SealedInvitation>(create);
  static SealedInvitation? _defaultInstance;

  SealedInvitation_Version whichVersion() => _SealedInvitation_VersionByTag[$_whichOneof(0)]!;
  void clearVersion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SealedInvitationV1 get v1 => $_getN(0);
  @$pb.TagNumber(1)
  set v1(SealedInvitationV1 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasV1() => $_has(0);
  @$pb.TagNumber(1)
  void clearV1() => clearField(1);
  @$pb.TagNumber(1)
  SealedInvitationV1 ensureV1() => $_ensure(0);
}

