///
//  Generated code. Do not modify.
//  source: message_contents/xmtp_envelope.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Compression extends $pb.ProtobufEnum {
  static const Compression COMPRESSION_DEFLATE = Compression._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMPRESSION_DEFLATE');
  static const Compression COMPRESSION_GZIP = Compression._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMPRESSION_GZIP');

  static const $core.List<Compression> values = <Compression> [
    COMPRESSION_DEFLATE,
    COMPRESSION_GZIP,
  ];

  static final $core.Map<$core.int, Compression> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Compression? valueOf($core.int value) => _byValue[value];

  const Compression._($core.int v, $core.String n) : super(v, n);
}

