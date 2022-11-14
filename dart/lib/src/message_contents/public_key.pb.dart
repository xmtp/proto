///
//  Generated code. Do not modify.
//  source: message_contents/public_key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'signature.pb.dart' as $0;

class UnsignedPublicKey_Secp256k1Uncompressed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnsignedPublicKey.Secp256k1Uncompressed', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UnsignedPublicKey_Secp256k1Uncompressed._() : super();
  factory UnsignedPublicKey_Secp256k1Uncompressed({
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory UnsignedPublicKey_Secp256k1Uncompressed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnsignedPublicKey_Secp256k1Uncompressed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnsignedPublicKey_Secp256k1Uncompressed clone() => UnsignedPublicKey_Secp256k1Uncompressed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnsignedPublicKey_Secp256k1Uncompressed copyWith(void Function(UnsignedPublicKey_Secp256k1Uncompressed) updates) => super.copyWith((message) => updates(message as UnsignedPublicKey_Secp256k1Uncompressed)) as UnsignedPublicKey_Secp256k1Uncompressed; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnsignedPublicKey_Secp256k1Uncompressed create() => UnsignedPublicKey_Secp256k1Uncompressed._();
  UnsignedPublicKey_Secp256k1Uncompressed createEmptyInstance() => create();
  static $pb.PbList<UnsignedPublicKey_Secp256k1Uncompressed> createRepeated() => $pb.PbList<UnsignedPublicKey_Secp256k1Uncompressed>();
  @$core.pragma('dart2js:noInline')
  static UnsignedPublicKey_Secp256k1Uncompressed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnsignedPublicKey_Secp256k1Uncompressed>(create);
  static UnsignedPublicKey_Secp256k1Uncompressed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);
}

enum UnsignedPublicKey_Union {
  secp256k1Uncompressed, 
  notSet
}

class UnsignedPublicKey extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UnsignedPublicKey_Union> _UnsignedPublicKey_UnionByTag = {
    3 : UnsignedPublicKey_Union.secp256k1Uncompressed,
    0 : UnsignedPublicKey_Union.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnsignedPublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [3])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<UnsignedPublicKey_Secp256k1Uncompressed>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secp256k1Uncompressed', subBuilder: UnsignedPublicKey_Secp256k1Uncompressed.create)
    ..hasRequiredFields = false
  ;

  UnsignedPublicKey._() : super();
  factory UnsignedPublicKey({
    $fixnum.Int64? createdNs,
    UnsignedPublicKey_Secp256k1Uncompressed? secp256k1Uncompressed,
  }) {
    final _result = create();
    if (createdNs != null) {
      _result.createdNs = createdNs;
    }
    if (secp256k1Uncompressed != null) {
      _result.secp256k1Uncompressed = secp256k1Uncompressed;
    }
    return _result;
  }
  factory UnsignedPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnsignedPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnsignedPublicKey clone() => UnsignedPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnsignedPublicKey copyWith(void Function(UnsignedPublicKey) updates) => super.copyWith((message) => updates(message as UnsignedPublicKey)) as UnsignedPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnsignedPublicKey create() => UnsignedPublicKey._();
  UnsignedPublicKey createEmptyInstance() => create();
  static $pb.PbList<UnsignedPublicKey> createRepeated() => $pb.PbList<UnsignedPublicKey>();
  @$core.pragma('dart2js:noInline')
  static UnsignedPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnsignedPublicKey>(create);
  static UnsignedPublicKey? _defaultInstance;

  UnsignedPublicKey_Union whichUnion() => _UnsignedPublicKey_UnionByTag[$_whichOneof(0)]!;
  void clearUnion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get createdNs => $_getI64(0);
  @$pb.TagNumber(1)
  set createdNs($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedNs() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedNs() => clearField(1);

  @$pb.TagNumber(3)
  UnsignedPublicKey_Secp256k1Uncompressed get secp256k1Uncompressed => $_getN(1);
  @$pb.TagNumber(3)
  set secp256k1Uncompressed(UnsignedPublicKey_Secp256k1Uncompressed v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecp256k1Uncompressed() => $_has(1);
  @$pb.TagNumber(3)
  void clearSecp256k1Uncompressed() => clearField(3);
  @$pb.TagNumber(3)
  UnsignedPublicKey_Secp256k1Uncompressed ensureSecp256k1Uncompressed() => $_ensure(1);
}

class SignedPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignedPublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyBytes', $pb.PbFieldType.OY)
    ..aOM<$0.Signature>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', subBuilder: $0.Signature.create)
    ..hasRequiredFields = false
  ;

  SignedPublicKey._() : super();
  factory SignedPublicKey({
    $core.List<$core.int>? keyBytes,
    $0.Signature? signature,
  }) {
    final _result = create();
    if (keyBytes != null) {
      _result.keyBytes = keyBytes;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory SignedPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignedPublicKey clone() => SignedPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignedPublicKey copyWith(void Function(SignedPublicKey) updates) => super.copyWith((message) => updates(message as SignedPublicKey)) as SignedPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignedPublicKey create() => SignedPublicKey._();
  SignedPublicKey createEmptyInstance() => create();
  static $pb.PbList<SignedPublicKey> createRepeated() => $pb.PbList<SignedPublicKey>();
  @$core.pragma('dart2js:noInline')
  static SignedPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignedPublicKey>(create);
  static SignedPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get keyBytes => $_getN(0);
  @$pb.TagNumber(1)
  set keyBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyBytes() => clearField(1);

  @$pb.TagNumber(2)
  $0.Signature get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($0.Signature v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
  @$pb.TagNumber(2)
  $0.Signature ensureSignature() => $_ensure(1);
}

class SignedPublicKeyBundle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignedPublicKeyBundle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOM<SignedPublicKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identityKey', subBuilder: SignedPublicKey.create)
    ..aOM<SignedPublicKey>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preKey', subBuilder: SignedPublicKey.create)
    ..hasRequiredFields = false
  ;

  SignedPublicKeyBundle._() : super();
  factory SignedPublicKeyBundle({
    SignedPublicKey? identityKey,
    SignedPublicKey? preKey,
  }) {
    final _result = create();
    if (identityKey != null) {
      _result.identityKey = identityKey;
    }
    if (preKey != null) {
      _result.preKey = preKey;
    }
    return _result;
  }
  factory SignedPublicKeyBundle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedPublicKeyBundle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignedPublicKeyBundle clone() => SignedPublicKeyBundle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignedPublicKeyBundle copyWith(void Function(SignedPublicKeyBundle) updates) => super.copyWith((message) => updates(message as SignedPublicKeyBundle)) as SignedPublicKeyBundle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignedPublicKeyBundle create() => SignedPublicKeyBundle._();
  SignedPublicKeyBundle createEmptyInstance() => create();
  static $pb.PbList<SignedPublicKeyBundle> createRepeated() => $pb.PbList<SignedPublicKeyBundle>();
  @$core.pragma('dart2js:noInline')
  static SignedPublicKeyBundle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignedPublicKeyBundle>(create);
  static SignedPublicKeyBundle? _defaultInstance;

  @$pb.TagNumber(1)
  SignedPublicKey get identityKey => $_getN(0);
  @$pb.TagNumber(1)
  set identityKey(SignedPublicKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentityKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentityKey() => clearField(1);
  @$pb.TagNumber(1)
  SignedPublicKey ensureIdentityKey() => $_ensure(0);

  @$pb.TagNumber(2)
  SignedPublicKey get preKey => $_getN(1);
  @$pb.TagNumber(2)
  set preKey(SignedPublicKey v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPreKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPreKey() => clearField(2);
  @$pb.TagNumber(2)
  SignedPublicKey ensurePreKey() => $_ensure(1);
}

class PublicKey_Secp256k1Uncompressed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicKey.Secp256k1Uncompressed', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PublicKey_Secp256k1Uncompressed._() : super();
  factory PublicKey_Secp256k1Uncompressed({
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory PublicKey_Secp256k1Uncompressed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicKey_Secp256k1Uncompressed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicKey_Secp256k1Uncompressed clone() => PublicKey_Secp256k1Uncompressed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicKey_Secp256k1Uncompressed copyWith(void Function(PublicKey_Secp256k1Uncompressed) updates) => super.copyWith((message) => updates(message as PublicKey_Secp256k1Uncompressed)) as PublicKey_Secp256k1Uncompressed; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicKey_Secp256k1Uncompressed create() => PublicKey_Secp256k1Uncompressed._();
  PublicKey_Secp256k1Uncompressed createEmptyInstance() => create();
  static $pb.PbList<PublicKey_Secp256k1Uncompressed> createRepeated() => $pb.PbList<PublicKey_Secp256k1Uncompressed>();
  @$core.pragma('dart2js:noInline')
  static PublicKey_Secp256k1Uncompressed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicKey_Secp256k1Uncompressed>(create);
  static PublicKey_Secp256k1Uncompressed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);
}

enum PublicKey_Union {
  secp256k1Uncompressed, 
  notSet
}

class PublicKey extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PublicKey_Union> _PublicKey_UnionByTag = {
    3 : PublicKey_Union.secp256k1Uncompressed,
    0 : PublicKey_Union.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [3])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.Signature>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', subBuilder: $0.Signature.create)
    ..aOM<PublicKey_Secp256k1Uncompressed>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secp256k1Uncompressed', subBuilder: PublicKey_Secp256k1Uncompressed.create)
    ..hasRequiredFields = false
  ;

  PublicKey._() : super();
  factory PublicKey({
    $fixnum.Int64? timestamp,
    $0.Signature? signature,
    PublicKey_Secp256k1Uncompressed? secp256k1Uncompressed,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    if (secp256k1Uncompressed != null) {
      _result.secp256k1Uncompressed = secp256k1Uncompressed;
    }
    return _result;
  }
  factory PublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicKey clone() => PublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicKey copyWith(void Function(PublicKey) updates) => super.copyWith((message) => updates(message as PublicKey)) as PublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicKey create() => PublicKey._();
  PublicKey createEmptyInstance() => create();
  static $pb.PbList<PublicKey> createRepeated() => $pb.PbList<PublicKey>();
  @$core.pragma('dart2js:noInline')
  static PublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicKey>(create);
  static PublicKey? _defaultInstance;

  PublicKey_Union whichUnion() => _PublicKey_UnionByTag[$_whichOneof(0)]!;
  void clearUnion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $0.Signature get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($0.Signature v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
  @$pb.TagNumber(2)
  $0.Signature ensureSignature() => $_ensure(1);

  @$pb.TagNumber(3)
  PublicKey_Secp256k1Uncompressed get secp256k1Uncompressed => $_getN(2);
  @$pb.TagNumber(3)
  set secp256k1Uncompressed(PublicKey_Secp256k1Uncompressed v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecp256k1Uncompressed() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecp256k1Uncompressed() => clearField(3);
  @$pb.TagNumber(3)
  PublicKey_Secp256k1Uncompressed ensureSecp256k1Uncompressed() => $_ensure(2);
}

class PublicKeyBundle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicKeyBundle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOM<PublicKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identityKey', subBuilder: PublicKey.create)
    ..aOM<PublicKey>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preKey', subBuilder: PublicKey.create)
    ..hasRequiredFields = false
  ;

  PublicKeyBundle._() : super();
  factory PublicKeyBundle({
    PublicKey? identityKey,
    PublicKey? preKey,
  }) {
    final _result = create();
    if (identityKey != null) {
      _result.identityKey = identityKey;
    }
    if (preKey != null) {
      _result.preKey = preKey;
    }
    return _result;
  }
  factory PublicKeyBundle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicKeyBundle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicKeyBundle clone() => PublicKeyBundle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicKeyBundle copyWith(void Function(PublicKeyBundle) updates) => super.copyWith((message) => updates(message as PublicKeyBundle)) as PublicKeyBundle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicKeyBundle create() => PublicKeyBundle._();
  PublicKeyBundle createEmptyInstance() => create();
  static $pb.PbList<PublicKeyBundle> createRepeated() => $pb.PbList<PublicKeyBundle>();
  @$core.pragma('dart2js:noInline')
  static PublicKeyBundle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicKeyBundle>(create);
  static PublicKeyBundle? _defaultInstance;

  @$pb.TagNumber(1)
  PublicKey get identityKey => $_getN(0);
  @$pb.TagNumber(1)
  set identityKey(PublicKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentityKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentityKey() => clearField(1);
  @$pb.TagNumber(1)
  PublicKey ensureIdentityKey() => $_ensure(0);

  @$pb.TagNumber(2)
  PublicKey get preKey => $_getN(1);
  @$pb.TagNumber(2)
  set preKey(PublicKey v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPreKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPreKey() => clearField(2);
  @$pb.TagNumber(2)
  PublicKey ensurePreKey() => $_ensure(1);
}

