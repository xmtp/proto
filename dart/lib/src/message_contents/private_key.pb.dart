///
//  Generated code. Do not modify.
//  source: message_contents/private_key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'public_key.pb.dart' as $1;
import 'ciphertext.pb.dart' as $2;

class SignedPrivateKey_Secp256k1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignedPrivateKey.Secp256k1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignedPrivateKey_Secp256k1._() : super();
  factory SignedPrivateKey_Secp256k1({
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory SignedPrivateKey_Secp256k1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedPrivateKey_Secp256k1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignedPrivateKey_Secp256k1 clone() => SignedPrivateKey_Secp256k1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignedPrivateKey_Secp256k1 copyWith(void Function(SignedPrivateKey_Secp256k1) updates) => super.copyWith((message) => updates(message as SignedPrivateKey_Secp256k1)) as SignedPrivateKey_Secp256k1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignedPrivateKey_Secp256k1 create() => SignedPrivateKey_Secp256k1._();
  SignedPrivateKey_Secp256k1 createEmptyInstance() => create();
  static $pb.PbList<SignedPrivateKey_Secp256k1> createRepeated() => $pb.PbList<SignedPrivateKey_Secp256k1>();
  @$core.pragma('dart2js:noInline')
  static SignedPrivateKey_Secp256k1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignedPrivateKey_Secp256k1>(create);
  static SignedPrivateKey_Secp256k1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);
}

enum SignedPrivateKey_Union {
  secp256k1, 
  notSet
}

class SignedPrivateKey extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SignedPrivateKey_Union> _SignedPrivateKey_UnionByTag = {
    2 : SignedPrivateKey_Union.secp256k1,
    0 : SignedPrivateKey_Union.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignedPrivateKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [2])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<SignedPrivateKey_Secp256k1>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secp256k1', subBuilder: SignedPrivateKey_Secp256k1.create)
    ..aOM<$1.SignedPublicKey>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', subBuilder: $1.SignedPublicKey.create)
    ..hasRequiredFields = false
  ;

  SignedPrivateKey._() : super();
  factory SignedPrivateKey({
    $fixnum.Int64? createdNs,
    SignedPrivateKey_Secp256k1? secp256k1,
    $1.SignedPublicKey? publicKey,
  }) {
    final _result = create();
    if (createdNs != null) {
      _result.createdNs = createdNs;
    }
    if (secp256k1 != null) {
      _result.secp256k1 = secp256k1;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory SignedPrivateKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedPrivateKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignedPrivateKey clone() => SignedPrivateKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignedPrivateKey copyWith(void Function(SignedPrivateKey) updates) => super.copyWith((message) => updates(message as SignedPrivateKey)) as SignedPrivateKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignedPrivateKey create() => SignedPrivateKey._();
  SignedPrivateKey createEmptyInstance() => create();
  static $pb.PbList<SignedPrivateKey> createRepeated() => $pb.PbList<SignedPrivateKey>();
  @$core.pragma('dart2js:noInline')
  static SignedPrivateKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignedPrivateKey>(create);
  static SignedPrivateKey? _defaultInstance;

  SignedPrivateKey_Union whichUnion() => _SignedPrivateKey_UnionByTag[$_whichOneof(0)]!;
  void clearUnion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get createdNs => $_getI64(0);
  @$pb.TagNumber(1)
  set createdNs($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedNs() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedNs() => clearField(1);

  @$pb.TagNumber(2)
  SignedPrivateKey_Secp256k1 get secp256k1 => $_getN(1);
  @$pb.TagNumber(2)
  set secp256k1(SignedPrivateKey_Secp256k1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecp256k1() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecp256k1() => clearField(2);
  @$pb.TagNumber(2)
  SignedPrivateKey_Secp256k1 ensureSecp256k1() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.SignedPublicKey get publicKey => $_getN(2);
  @$pb.TagNumber(3)
  set publicKey($1.SignedPublicKey v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicKey() => clearField(3);
  @$pb.TagNumber(3)
  $1.SignedPublicKey ensurePublicKey() => $_ensure(2);
}

class PrivateKeyBundleV2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrivateKeyBundleV2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOM<SignedPrivateKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identityKey', subBuilder: SignedPrivateKey.create)
    ..pc<SignedPrivateKey>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preKeys', $pb.PbFieldType.PM, subBuilder: SignedPrivateKey.create)
    ..hasRequiredFields = false
  ;

  PrivateKeyBundleV2._() : super();
  factory PrivateKeyBundleV2({
    SignedPrivateKey? identityKey,
    $core.Iterable<SignedPrivateKey>? preKeys,
  }) {
    final _result = create();
    if (identityKey != null) {
      _result.identityKey = identityKey;
    }
    if (preKeys != null) {
      _result.preKeys.addAll(preKeys);
    }
    return _result;
  }
  factory PrivateKeyBundleV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateKeyBundleV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateKeyBundleV2 clone() => PrivateKeyBundleV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateKeyBundleV2 copyWith(void Function(PrivateKeyBundleV2) updates) => super.copyWith((message) => updates(message as PrivateKeyBundleV2)) as PrivateKeyBundleV2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateKeyBundleV2 create() => PrivateKeyBundleV2._();
  PrivateKeyBundleV2 createEmptyInstance() => create();
  static $pb.PbList<PrivateKeyBundleV2> createRepeated() => $pb.PbList<PrivateKeyBundleV2>();
  @$core.pragma('dart2js:noInline')
  static PrivateKeyBundleV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateKeyBundleV2>(create);
  static PrivateKeyBundleV2? _defaultInstance;

  @$pb.TagNumber(1)
  SignedPrivateKey get identityKey => $_getN(0);
  @$pb.TagNumber(1)
  set identityKey(SignedPrivateKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentityKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentityKey() => clearField(1);
  @$pb.TagNumber(1)
  SignedPrivateKey ensureIdentityKey() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<SignedPrivateKey> get preKeys => $_getList(1);
}

class PrivateKey_Secp256k1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrivateKey.Secp256k1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PrivateKey_Secp256k1._() : super();
  factory PrivateKey_Secp256k1({
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory PrivateKey_Secp256k1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateKey_Secp256k1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateKey_Secp256k1 clone() => PrivateKey_Secp256k1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateKey_Secp256k1 copyWith(void Function(PrivateKey_Secp256k1) updates) => super.copyWith((message) => updates(message as PrivateKey_Secp256k1)) as PrivateKey_Secp256k1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateKey_Secp256k1 create() => PrivateKey_Secp256k1._();
  PrivateKey_Secp256k1 createEmptyInstance() => create();
  static $pb.PbList<PrivateKey_Secp256k1> createRepeated() => $pb.PbList<PrivateKey_Secp256k1>();
  @$core.pragma('dart2js:noInline')
  static PrivateKey_Secp256k1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateKey_Secp256k1>(create);
  static PrivateKey_Secp256k1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);
}

enum PrivateKey_Union {
  secp256k1, 
  notSet
}

class PrivateKey extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PrivateKey_Union> _PrivateKey_UnionByTag = {
    2 : PrivateKey_Union.secp256k1,
    0 : PrivateKey_Union.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrivateKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [2])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<PrivateKey_Secp256k1>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secp256k1', subBuilder: PrivateKey_Secp256k1.create)
    ..aOM<$1.PublicKey>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', subBuilder: $1.PublicKey.create)
    ..hasRequiredFields = false
  ;

  PrivateKey._() : super();
  factory PrivateKey({
    $fixnum.Int64? timestamp,
    PrivateKey_Secp256k1? secp256k1,
    $1.PublicKey? publicKey,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (secp256k1 != null) {
      _result.secp256k1 = secp256k1;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory PrivateKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateKey clone() => PrivateKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateKey copyWith(void Function(PrivateKey) updates) => super.copyWith((message) => updates(message as PrivateKey)) as PrivateKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateKey create() => PrivateKey._();
  PrivateKey createEmptyInstance() => create();
  static $pb.PbList<PrivateKey> createRepeated() => $pb.PbList<PrivateKey>();
  @$core.pragma('dart2js:noInline')
  static PrivateKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateKey>(create);
  static PrivateKey? _defaultInstance;

  PrivateKey_Union whichUnion() => _PrivateKey_UnionByTag[$_whichOneof(0)]!;
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
  PrivateKey_Secp256k1 get secp256k1 => $_getN(1);
  @$pb.TagNumber(2)
  set secp256k1(PrivateKey_Secp256k1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecp256k1() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecp256k1() => clearField(2);
  @$pb.TagNumber(2)
  PrivateKey_Secp256k1 ensureSecp256k1() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.PublicKey get publicKey => $_getN(2);
  @$pb.TagNumber(3)
  set publicKey($1.PublicKey v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicKey() => clearField(3);
  @$pb.TagNumber(3)
  $1.PublicKey ensurePublicKey() => $_ensure(2);
}

class PrivateKeyBundleV1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrivateKeyBundleV1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOM<PrivateKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identityKey', subBuilder: PrivateKey.create)
    ..pc<PrivateKey>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preKeys', $pb.PbFieldType.PM, subBuilder: PrivateKey.create)
    ..hasRequiredFields = false
  ;

  PrivateKeyBundleV1._() : super();
  factory PrivateKeyBundleV1({
    PrivateKey? identityKey,
    $core.Iterable<PrivateKey>? preKeys,
  }) {
    final _result = create();
    if (identityKey != null) {
      _result.identityKey = identityKey;
    }
    if (preKeys != null) {
      _result.preKeys.addAll(preKeys);
    }
    return _result;
  }
  factory PrivateKeyBundleV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateKeyBundleV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateKeyBundleV1 clone() => PrivateKeyBundleV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateKeyBundleV1 copyWith(void Function(PrivateKeyBundleV1) updates) => super.copyWith((message) => updates(message as PrivateKeyBundleV1)) as PrivateKeyBundleV1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateKeyBundleV1 create() => PrivateKeyBundleV1._();
  PrivateKeyBundleV1 createEmptyInstance() => create();
  static $pb.PbList<PrivateKeyBundleV1> createRepeated() => $pb.PbList<PrivateKeyBundleV1>();
  @$core.pragma('dart2js:noInline')
  static PrivateKeyBundleV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateKeyBundleV1>(create);
  static PrivateKeyBundleV1? _defaultInstance;

  @$pb.TagNumber(1)
  PrivateKey get identityKey => $_getN(0);
  @$pb.TagNumber(1)
  set identityKey(PrivateKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentityKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentityKey() => clearField(1);
  @$pb.TagNumber(1)
  PrivateKey ensureIdentityKey() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<PrivateKey> get preKeys => $_getList(1);
}

enum PrivateKeyBundle_Version {
  v1, 
  v2, 
  notSet
}

class PrivateKeyBundle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PrivateKeyBundle_Version> _PrivateKeyBundle_VersionByTag = {
    1 : PrivateKeyBundle_Version.v1,
    2 : PrivateKeyBundle_Version.v2,
    0 : PrivateKeyBundle_Version.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrivateKeyBundle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PrivateKeyBundleV1>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v1', subBuilder: PrivateKeyBundleV1.create)
    ..aOM<PrivateKeyBundleV2>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v2', subBuilder: PrivateKeyBundleV2.create)
    ..hasRequiredFields = false
  ;

  PrivateKeyBundle._() : super();
  factory PrivateKeyBundle({
    PrivateKeyBundleV1? v1,
    PrivateKeyBundleV2? v2,
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
  factory PrivateKeyBundle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateKeyBundle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateKeyBundle clone() => PrivateKeyBundle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateKeyBundle copyWith(void Function(PrivateKeyBundle) updates) => super.copyWith((message) => updates(message as PrivateKeyBundle)) as PrivateKeyBundle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateKeyBundle create() => PrivateKeyBundle._();
  PrivateKeyBundle createEmptyInstance() => create();
  static $pb.PbList<PrivateKeyBundle> createRepeated() => $pb.PbList<PrivateKeyBundle>();
  @$core.pragma('dart2js:noInline')
  static PrivateKeyBundle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateKeyBundle>(create);
  static PrivateKeyBundle? _defaultInstance;

  PrivateKeyBundle_Version whichVersion() => _PrivateKeyBundle_VersionByTag[$_whichOneof(0)]!;
  void clearVersion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PrivateKeyBundleV1 get v1 => $_getN(0);
  @$pb.TagNumber(1)
  set v1(PrivateKeyBundleV1 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasV1() => $_has(0);
  @$pb.TagNumber(1)
  void clearV1() => clearField(1);
  @$pb.TagNumber(1)
  PrivateKeyBundleV1 ensureV1() => $_ensure(0);

  @$pb.TagNumber(2)
  PrivateKeyBundleV2 get v2 => $_getN(1);
  @$pb.TagNumber(2)
  set v2(PrivateKeyBundleV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasV2() => $_has(1);
  @$pb.TagNumber(2)
  void clearV2() => clearField(2);
  @$pb.TagNumber(2)
  PrivateKeyBundleV2 ensureV2() => $_ensure(1);
}

class EncryptedPrivateKeyBundleV1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EncryptedPrivateKeyBundleV1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'walletPreKey', $pb.PbFieldType.OY)
    ..aOM<$2.Ciphertext>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciphertext', subBuilder: $2.Ciphertext.create)
    ..hasRequiredFields = false
  ;

  EncryptedPrivateKeyBundleV1._() : super();
  factory EncryptedPrivateKeyBundleV1({
    $core.List<$core.int>? walletPreKey,
    $2.Ciphertext? ciphertext,
  }) {
    final _result = create();
    if (walletPreKey != null) {
      _result.walletPreKey = walletPreKey;
    }
    if (ciphertext != null) {
      _result.ciphertext = ciphertext;
    }
    return _result;
  }
  factory EncryptedPrivateKeyBundleV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptedPrivateKeyBundleV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptedPrivateKeyBundleV1 clone() => EncryptedPrivateKeyBundleV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptedPrivateKeyBundleV1 copyWith(void Function(EncryptedPrivateKeyBundleV1) updates) => super.copyWith((message) => updates(message as EncryptedPrivateKeyBundleV1)) as EncryptedPrivateKeyBundleV1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EncryptedPrivateKeyBundleV1 create() => EncryptedPrivateKeyBundleV1._();
  EncryptedPrivateKeyBundleV1 createEmptyInstance() => create();
  static $pb.PbList<EncryptedPrivateKeyBundleV1> createRepeated() => $pb.PbList<EncryptedPrivateKeyBundleV1>();
  @$core.pragma('dart2js:noInline')
  static EncryptedPrivateKeyBundleV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptedPrivateKeyBundleV1>(create);
  static EncryptedPrivateKeyBundleV1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get walletPreKey => $_getN(0);
  @$pb.TagNumber(1)
  set walletPreKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletPreKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletPreKey() => clearField(1);

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

enum EncryptedPrivateKeyBundle_Version {
  v1, 
  notSet
}

class EncryptedPrivateKeyBundle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, EncryptedPrivateKeyBundle_Version> _EncryptedPrivateKeyBundle_VersionByTag = {
    1 : EncryptedPrivateKeyBundle_Version.v1,
    0 : EncryptedPrivateKeyBundle_Version.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EncryptedPrivateKeyBundle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<EncryptedPrivateKeyBundleV1>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v1', subBuilder: EncryptedPrivateKeyBundleV1.create)
    ..hasRequiredFields = false
  ;

  EncryptedPrivateKeyBundle._() : super();
  factory EncryptedPrivateKeyBundle({
    EncryptedPrivateKeyBundleV1? v1,
  }) {
    final _result = create();
    if (v1 != null) {
      _result.v1 = v1;
    }
    return _result;
  }
  factory EncryptedPrivateKeyBundle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptedPrivateKeyBundle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptedPrivateKeyBundle clone() => EncryptedPrivateKeyBundle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptedPrivateKeyBundle copyWith(void Function(EncryptedPrivateKeyBundle) updates) => super.copyWith((message) => updates(message as EncryptedPrivateKeyBundle)) as EncryptedPrivateKeyBundle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EncryptedPrivateKeyBundle create() => EncryptedPrivateKeyBundle._();
  EncryptedPrivateKeyBundle createEmptyInstance() => create();
  static $pb.PbList<EncryptedPrivateKeyBundle> createRepeated() => $pb.PbList<EncryptedPrivateKeyBundle>();
  @$core.pragma('dart2js:noInline')
  static EncryptedPrivateKeyBundle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptedPrivateKeyBundle>(create);
  static EncryptedPrivateKeyBundle? _defaultInstance;

  EncryptedPrivateKeyBundle_Version whichVersion() => _EncryptedPrivateKeyBundle_VersionByTag[$_whichOneof(0)]!;
  void clearVersion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EncryptedPrivateKeyBundleV1 get v1 => $_getN(0);
  @$pb.TagNumber(1)
  set v1(EncryptedPrivateKeyBundleV1 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasV1() => $_has(0);
  @$pb.TagNumber(1)
  void clearV1() => clearField(1);
  @$pb.TagNumber(1)
  EncryptedPrivateKeyBundleV1 ensureV1() => $_ensure(0);
}

