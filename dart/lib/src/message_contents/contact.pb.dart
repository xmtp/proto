///
//  Generated code. Do not modify.
//  source: message_contents/contact.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'public_key.pb.dart' as $1;

class ContactBundleV1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContactBundleV1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOM<$1.PublicKeyBundle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyBundle', subBuilder: $1.PublicKeyBundle.create)
    ..hasRequiredFields = false
  ;

  ContactBundleV1._() : super();
  factory ContactBundleV1({
    $1.PublicKeyBundle? keyBundle,
  }) {
    final _result = create();
    if (keyBundle != null) {
      _result.keyBundle = keyBundle;
    }
    return _result;
  }
  factory ContactBundleV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactBundleV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContactBundleV1 clone() => ContactBundleV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContactBundleV1 copyWith(void Function(ContactBundleV1) updates) => super.copyWith((message) => updates(message as ContactBundleV1)) as ContactBundleV1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContactBundleV1 create() => ContactBundleV1._();
  ContactBundleV1 createEmptyInstance() => create();
  static $pb.PbList<ContactBundleV1> createRepeated() => $pb.PbList<ContactBundleV1>();
  @$core.pragma('dart2js:noInline')
  static ContactBundleV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactBundleV1>(create);
  static ContactBundleV1? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PublicKeyBundle get keyBundle => $_getN(0);
  @$pb.TagNumber(1)
  set keyBundle($1.PublicKeyBundle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyBundle() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyBundle() => clearField(1);
  @$pb.TagNumber(1)
  $1.PublicKeyBundle ensureKeyBundle() => $_ensure(0);
}

class ContactBundleV2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContactBundleV2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..aOM<$1.SignedPublicKeyBundle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyBundle', subBuilder: $1.SignedPublicKeyBundle.create)
    ..hasRequiredFields = false
  ;

  ContactBundleV2._() : super();
  factory ContactBundleV2({
    $1.SignedPublicKeyBundle? keyBundle,
  }) {
    final _result = create();
    if (keyBundle != null) {
      _result.keyBundle = keyBundle;
    }
    return _result;
  }
  factory ContactBundleV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactBundleV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContactBundleV2 clone() => ContactBundleV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContactBundleV2 copyWith(void Function(ContactBundleV2) updates) => super.copyWith((message) => updates(message as ContactBundleV2)) as ContactBundleV2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContactBundleV2 create() => ContactBundleV2._();
  ContactBundleV2 createEmptyInstance() => create();
  static $pb.PbList<ContactBundleV2> createRepeated() => $pb.PbList<ContactBundleV2>();
  @$core.pragma('dart2js:noInline')
  static ContactBundleV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactBundleV2>(create);
  static ContactBundleV2? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SignedPublicKeyBundle get keyBundle => $_getN(0);
  @$pb.TagNumber(1)
  set keyBundle($1.SignedPublicKeyBundle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyBundle() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyBundle() => clearField(1);
  @$pb.TagNumber(1)
  $1.SignedPublicKeyBundle ensureKeyBundle() => $_ensure(0);
}

enum ContactBundle_Version {
  v1, 
  v2, 
  notSet
}

class ContactBundle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ContactBundle_Version> _ContactBundle_VersionByTag = {
    1 : ContactBundle_Version.v1,
    2 : ContactBundle_Version.v2,
    0 : ContactBundle_Version.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContactBundle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ContactBundleV1>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v1', subBuilder: ContactBundleV1.create)
    ..aOM<ContactBundleV2>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v2', subBuilder: ContactBundleV2.create)
    ..hasRequiredFields = false
  ;

  ContactBundle._() : super();
  factory ContactBundle({
    ContactBundleV1? v1,
    ContactBundleV2? v2,
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
  factory ContactBundle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactBundle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContactBundle clone() => ContactBundle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContactBundle copyWith(void Function(ContactBundle) updates) => super.copyWith((message) => updates(message as ContactBundle)) as ContactBundle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContactBundle create() => ContactBundle._();
  ContactBundle createEmptyInstance() => create();
  static $pb.PbList<ContactBundle> createRepeated() => $pb.PbList<ContactBundle>();
  @$core.pragma('dart2js:noInline')
  static ContactBundle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactBundle>(create);
  static ContactBundle? _defaultInstance;

  ContactBundle_Version whichVersion() => _ContactBundle_VersionByTag[$_whichOneof(0)]!;
  void clearVersion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ContactBundleV1 get v1 => $_getN(0);
  @$pb.TagNumber(1)
  set v1(ContactBundleV1 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasV1() => $_has(0);
  @$pb.TagNumber(1)
  void clearV1() => clearField(1);
  @$pb.TagNumber(1)
  ContactBundleV1 ensureV1() => $_ensure(0);

  @$pb.TagNumber(2)
  ContactBundleV2 get v2 => $_getN(1);
  @$pb.TagNumber(2)
  set v2(ContactBundleV2 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasV2() => $_has(1);
  @$pb.TagNumber(2)
  void clearV2() => clearField(2);
  @$pb.TagNumber(2)
  ContactBundleV2 ensureV2() => $_ensure(1);
}

