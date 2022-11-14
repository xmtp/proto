///
//  Generated code. Do not modify.
//  source: message_api/v1/authn.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../message_contents/public_key.pb.dart' as $1;
import '../../message_contents/signature.pb.dart' as $0;

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Token', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..aOM<$1.PublicKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identityKey', subBuilder: $1.PublicKey.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authDataBytes', $pb.PbFieldType.OY)
    ..aOM<$0.Signature>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authDataSignature', subBuilder: $0.Signature.create)
    ..hasRequiredFields = false
  ;

  Token._() : super();
  factory Token({
    $1.PublicKey? identityKey,
    $core.List<$core.int>? authDataBytes,
    $0.Signature? authDataSignature,
  }) {
    final _result = create();
    if (identityKey != null) {
      _result.identityKey = identityKey;
    }
    if (authDataBytes != null) {
      _result.authDataBytes = authDataBytes;
    }
    if (authDataSignature != null) {
      _result.authDataSignature = authDataSignature;
    }
    return _result;
  }
  factory Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Token clone() => Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Token copyWith(void Function(Token) updates) => super.copyWith((message) => updates(message as Token)) as Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token create() => Token._();
  Token createEmptyInstance() => create();
  static $pb.PbList<Token> createRepeated() => $pb.PbList<Token>();
  @$core.pragma('dart2js:noInline')
  static Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token>(create);
  static Token? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PublicKey get identityKey => $_getN(0);
  @$pb.TagNumber(1)
  set identityKey($1.PublicKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentityKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentityKey() => clearField(1);
  @$pb.TagNumber(1)
  $1.PublicKey ensureIdentityKey() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get authDataBytes => $_getN(1);
  @$pb.TagNumber(2)
  set authDataBytes($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthDataBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthDataBytes() => clearField(2);

  @$pb.TagNumber(3)
  $0.Signature get authDataSignature => $_getN(2);
  @$pb.TagNumber(3)
  set authDataSignature($0.Signature v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthDataSignature() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthDataSignature() => clearField(3);
  @$pb.TagNumber(3)
  $0.Signature ensureAuthDataSignature() => $_ensure(2);
}

class AuthData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'walletAddr')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AuthData._() : super();
  factory AuthData({
    $core.String? walletAddr,
    $fixnum.Int64? createdNs,
  }) {
    final _result = create();
    if (walletAddr != null) {
      _result.walletAddr = walletAddr;
    }
    if (createdNs != null) {
      _result.createdNs = createdNs;
    }
    return _result;
  }
  factory AuthData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthData clone() => AuthData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthData copyWith(void Function(AuthData) updates) => super.copyWith((message) => updates(message as AuthData)) as AuthData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthData create() => AuthData._();
  AuthData createEmptyInstance() => create();
  static $pb.PbList<AuthData> createRepeated() => $pb.PbList<AuthData>();
  @$core.pragma('dart2js:noInline')
  static AuthData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthData>(create);
  static AuthData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletAddr => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletAddr($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletAddr() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createdNs => $_getI64(1);
  @$pb.TagNumber(2)
  set createdNs($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedNs() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedNs() => clearField(2);
}

