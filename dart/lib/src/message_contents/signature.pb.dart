///
//  Generated code. Do not modify.
//  source: message_contents/signature.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Signature_ECDSACompact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Signature.ECDSACompact', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recovery', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Signature_ECDSACompact._() : super();
  factory Signature_ECDSACompact({
    $core.List<$core.int>? bytes,
    $core.int? recovery,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (recovery != null) {
      _result.recovery = recovery;
    }
    return _result;
  }
  factory Signature_ECDSACompact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Signature_ECDSACompact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Signature_ECDSACompact clone() => Signature_ECDSACompact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Signature_ECDSACompact copyWith(void Function(Signature_ECDSACompact) updates) => super.copyWith((message) => updates(message as Signature_ECDSACompact)) as Signature_ECDSACompact; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Signature_ECDSACompact create() => Signature_ECDSACompact._();
  Signature_ECDSACompact createEmptyInstance() => create();
  static $pb.PbList<Signature_ECDSACompact> createRepeated() => $pb.PbList<Signature_ECDSACompact>();
  @$core.pragma('dart2js:noInline')
  static Signature_ECDSACompact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Signature_ECDSACompact>(create);
  static Signature_ECDSACompact? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get recovery => $_getIZ(1);
  @$pb.TagNumber(2)
  set recovery($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecovery() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecovery() => clearField(2);
}

class Signature_WalletECDSACompact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Signature.WalletECDSACompact', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recovery', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Signature_WalletECDSACompact._() : super();
  factory Signature_WalletECDSACompact({
    $core.List<$core.int>? bytes,
    $core.int? recovery,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (recovery != null) {
      _result.recovery = recovery;
    }
    return _result;
  }
  factory Signature_WalletECDSACompact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Signature_WalletECDSACompact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Signature_WalletECDSACompact clone() => Signature_WalletECDSACompact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Signature_WalletECDSACompact copyWith(void Function(Signature_WalletECDSACompact) updates) => super.copyWith((message) => updates(message as Signature_WalletECDSACompact)) as Signature_WalletECDSACompact; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Signature_WalletECDSACompact create() => Signature_WalletECDSACompact._();
  Signature_WalletECDSACompact createEmptyInstance() => create();
  static $pb.PbList<Signature_WalletECDSACompact> createRepeated() => $pb.PbList<Signature_WalletECDSACompact>();
  @$core.pragma('dart2js:noInline')
  static Signature_WalletECDSACompact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Signature_WalletECDSACompact>(create);
  static Signature_WalletECDSACompact? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get recovery => $_getIZ(1);
  @$pb.TagNumber(2)
  set recovery($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecovery() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecovery() => clearField(2);
}

enum Signature_Union {
  ecdsaCompact, 
  walletEcdsaCompact, 
  notSet
}

class Signature extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Signature_Union> _Signature_UnionByTag = {
    1 : Signature_Union.ecdsaCompact,
    2 : Signature_Union.walletEcdsaCompact,
    0 : Signature_Union.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Signature', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Signature_ECDSACompact>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ecdsaCompact', subBuilder: Signature_ECDSACompact.create)
    ..aOM<Signature_WalletECDSACompact>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'walletEcdsaCompact', subBuilder: Signature_WalletECDSACompact.create)
    ..hasRequiredFields = false
  ;

  Signature._() : super();
  factory Signature({
    Signature_ECDSACompact? ecdsaCompact,
    Signature_WalletECDSACompact? walletEcdsaCompact,
  }) {
    final _result = create();
    if (ecdsaCompact != null) {
      _result.ecdsaCompact = ecdsaCompact;
    }
    if (walletEcdsaCompact != null) {
      _result.walletEcdsaCompact = walletEcdsaCompact;
    }
    return _result;
  }
  factory Signature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Signature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Signature clone() => Signature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Signature copyWith(void Function(Signature) updates) => super.copyWith((message) => updates(message as Signature)) as Signature; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Signature create() => Signature._();
  Signature createEmptyInstance() => create();
  static $pb.PbList<Signature> createRepeated() => $pb.PbList<Signature>();
  @$core.pragma('dart2js:noInline')
  static Signature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Signature>(create);
  static Signature? _defaultInstance;

  Signature_Union whichUnion() => _Signature_UnionByTag[$_whichOneof(0)]!;
  void clearUnion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Signature_ECDSACompact get ecdsaCompact => $_getN(0);
  @$pb.TagNumber(1)
  set ecdsaCompact(Signature_ECDSACompact v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEcdsaCompact() => $_has(0);
  @$pb.TagNumber(1)
  void clearEcdsaCompact() => clearField(1);
  @$pb.TagNumber(1)
  Signature_ECDSACompact ensureEcdsaCompact() => $_ensure(0);

  @$pb.TagNumber(2)
  Signature_WalletECDSACompact get walletEcdsaCompact => $_getN(1);
  @$pb.TagNumber(2)
  set walletEcdsaCompact(Signature_WalletECDSACompact v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletEcdsaCompact() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletEcdsaCompact() => clearField(2);
  @$pb.TagNumber(2)
  Signature_WalletECDSACompact ensureWalletEcdsaCompact() => $_ensure(1);
}

