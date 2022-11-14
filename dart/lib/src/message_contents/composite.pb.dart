///
//  Generated code. Do not modify.
//  source: message_contents/composite.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'xmtp_envelope.pb.dart' as $3;

enum Composite_Part_Element {
  part, 
  composite, 
  notSet
}

class Composite_Part extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Composite_Part_Element> _Composite_Part_ElementByTag = {
    1 : Composite_Part_Element.part,
    2 : Composite_Part_Element.composite,
    0 : Composite_Part_Element.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Composite.Part', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$3.EncodedContent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'part', subBuilder: $3.EncodedContent.create)
    ..aOM<Composite>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'composite', subBuilder: Composite.create)
    ..hasRequiredFields = false
  ;

  Composite_Part._() : super();
  factory Composite_Part({
    $3.EncodedContent? part,
    Composite? composite,
  }) {
    final _result = create();
    if (part != null) {
      _result.part = part;
    }
    if (composite != null) {
      _result.composite = composite;
    }
    return _result;
  }
  factory Composite_Part.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Composite_Part.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Composite_Part clone() => Composite_Part()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Composite_Part copyWith(void Function(Composite_Part) updates) => super.copyWith((message) => updates(message as Composite_Part)) as Composite_Part; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Composite_Part create() => Composite_Part._();
  Composite_Part createEmptyInstance() => create();
  static $pb.PbList<Composite_Part> createRepeated() => $pb.PbList<Composite_Part>();
  @$core.pragma('dart2js:noInline')
  static Composite_Part getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Composite_Part>(create);
  static Composite_Part? _defaultInstance;

  Composite_Part_Element whichElement() => _Composite_Part_ElementByTag[$_whichOneof(0)]!;
  void clearElement() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $3.EncodedContent get part => $_getN(0);
  @$pb.TagNumber(1)
  set part($3.EncodedContent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  $3.EncodedContent ensurePart() => $_ensure(0);

  @$pb.TagNumber(2)
  Composite get composite => $_getN(1);
  @$pb.TagNumber(2)
  set composite(Composite v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasComposite() => $_has(1);
  @$pb.TagNumber(2)
  void clearComposite() => clearField(2);
  @$pb.TagNumber(2)
  Composite ensureComposite() => $_ensure(1);
}

class Composite extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Composite', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'xmtp.message_contents'), createEmptyInstance: create)
    ..pc<Composite_Part>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: Composite_Part.create)
    ..hasRequiredFields = false
  ;

  Composite._() : super();
  factory Composite({
    $core.Iterable<Composite_Part>? parts,
  }) {
    final _result = create();
    if (parts != null) {
      _result.parts.addAll(parts);
    }
    return _result;
  }
  factory Composite.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Composite.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Composite clone() => Composite()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Composite copyWith(void Function(Composite) updates) => super.copyWith((message) => updates(message as Composite)) as Composite; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Composite create() => Composite._();
  Composite createEmptyInstance() => create();
  static $pb.PbList<Composite> createRepeated() => $pb.PbList<Composite>();
  @$core.pragma('dart2js:noInline')
  static Composite getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Composite>(create);
  static Composite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Composite_Part> get parts => $_getList(0);
}

