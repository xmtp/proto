///
//  Generated code. Do not modify.
//  source: message_api/v1/message_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SortDirection extends $pb.ProtobufEnum {
  static const SortDirection SORT_DIRECTION_UNSPECIFIED = SortDirection._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SORT_DIRECTION_UNSPECIFIED');
  static const SortDirection SORT_DIRECTION_ASCENDING = SortDirection._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SORT_DIRECTION_ASCENDING');
  static const SortDirection SORT_DIRECTION_DESCENDING = SortDirection._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SORT_DIRECTION_DESCENDING');

  static const $core.List<SortDirection> values = <SortDirection> [
    SORT_DIRECTION_UNSPECIFIED,
    SORT_DIRECTION_ASCENDING,
    SORT_DIRECTION_DESCENDING,
  ];

  static final $core.Map<$core.int, SortDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SortDirection? valueOf($core.int value) => _byValue[value];

  const SortDirection._($core.int v, $core.String n) : super(v, n);
}

