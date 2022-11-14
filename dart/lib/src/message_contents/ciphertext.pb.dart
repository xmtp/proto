///
//  Generated code. Do not modify.
//  source: message_contents/ciphertext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Ciphertext_Aes256gcmHkdfsha256 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Ciphertext.Aes256gcmHkdfsha256', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hkdfSalt', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gcmNonce', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Ciphertext_Aes256gcmHkdfsha256._() : super();
  factory Ciphertext_Aes256gcmHkdfsha256({
    $core.List<$core.int>? hkdfSalt,
    $core.List<$core.int>? gcmNonce,
    $core.List<$core.int>? payload,
  }) {
    final _result = create();
    if (hkdfSalt != null) {
      _result.hkdfSalt = hkdfSalt;
    }
    if (gcmNonce != null) {
      _result.gcmNonce = gcmNonce;
    }
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory Ciphertext_Aes256gcmHkdfsha256.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ciphertext_Aes256gcmHkdfsha256.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ciphertext_Aes256gcmHkdfsha256 clone() => Ciphertext_Aes256gcmHkdfsha256()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ciphertext_Aes256gcmHkdfsha256 copyWith(void Function(Ciphertext_Aes256gcmHkdfsha256) updates) => super.copyWith((message) => updates(message as Ciphertext_Aes256gcmHkdfsha256)) as Ciphertext_Aes256gcmHkdfsha256; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ciphertext_Aes256gcmHkdfsha256 create() => Ciphertext_Aes256gcmHkdfsha256._();
  Ciphertext_Aes256gcmHkdfsha256 createEmptyInstance() => create();
  static $pb.PbList<Ciphertext_Aes256gcmHkdfsha256> createRepeated() => $pb.PbList<Ciphertext_Aes256gcmHkdfsha256>();
  @$core.pragma('dart2js:noInline')
  static Ciphertext_Aes256gcmHkdfsha256 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ciphertext_Aes256gcmHkdfsha256>(create);
  static Ciphertext_Aes256gcmHkdfsha256? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hkdfSalt => $_getN(0);
  @$pb.TagNumber(1)
  set hkdfSalt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHkdfSalt() => $_has(0);
  @$pb.TagNumber(1)
  void clearHkdfSalt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get gcmNonce => $_getN(1);
  @$pb.TagNumber(2)
  set gcmNonce($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGcmNonce() => $_has(1);
  @$pb.TagNumber(2)
  void clearGcmNonce() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get payload => $_getN(2);
  @$pb.TagNumber(3)
  set payload($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
}

enum Ciphertext_Union {
  aes256GcmHkdfSha256, 
  notSet
}

class Ciphertext extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Ciphertext_Union> _Ciphertext_UnionByTag = {
    1 : Ciphertext_Union.aes256GcmHkdfSha256,
    0 : Ciphertext_Union.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Ciphertext', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Ciphertext_Aes256gcmHkdfsha256>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aes256GcmHkdfSha256', subBuilder: Ciphertext_Aes256gcmHkdfsha256.create)
    ..hasRequiredFields = false
  ;

  Ciphertext._() : super();
  factory Ciphertext({
    Ciphertext_Aes256gcmHkdfsha256? aes256GcmHkdfSha256,
  }) {
    final _result = create();
    if (aes256GcmHkdfSha256 != null) {
      _result.aes256GcmHkdfSha256 = aes256GcmHkdfSha256;
    }
    return _result;
  }
  factory Ciphertext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ciphertext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ciphertext clone() => Ciphertext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ciphertext copyWith(void Function(Ciphertext) updates) => super.copyWith((message) => updates(message as Ciphertext)) as Ciphertext; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ciphertext create() => Ciphertext._();
  Ciphertext createEmptyInstance() => create();
  static $pb.PbList<Ciphertext> createRepeated() => $pb.PbList<Ciphertext>();
  @$core.pragma('dart2js:noInline')
  static Ciphertext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ciphertext>(create);
  static Ciphertext? _defaultInstance;

  Ciphertext_Union whichUnion() => _Ciphertext_UnionByTag[$_whichOneof(0)]!;
  void clearUnion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Ciphertext_Aes256gcmHkdfsha256 get aes256GcmHkdfSha256 => $_getN(0);
  @$pb.TagNumber(1)
  set aes256GcmHkdfSha256(Ciphertext_Aes256gcmHkdfsha256 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAes256GcmHkdfSha256() => $_has(0);
  @$pb.TagNumber(1)
  void clearAes256GcmHkdfSha256() => clearField(1);
  @$pb.TagNumber(1)
  Ciphertext_Aes256gcmHkdfsha256 ensureAes256GcmHkdfSha256() => $_ensure(0);
}

