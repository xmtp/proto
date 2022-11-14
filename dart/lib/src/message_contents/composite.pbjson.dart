///
//  Generated code. Do not modify.
//  source: message_contents/composite.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use compositeDescriptor instead')
const Composite$json = const {
  '1': 'Composite',
  '2': const [
    const {'1': 'parts', '3': 1, '4': 3, '5': 11, '6': '.xmtp.message_contents.Composite.Part', '10': 'parts'},
  ],
  '3': const [Composite_Part$json],
};

@$core.Deprecated('Use compositeDescriptor instead')
const Composite_Part$json = const {
  '1': 'Part',
  '2': const [
    const {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.EncodedContent', '9': 0, '10': 'part'},
    const {'1': 'composite', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.Composite', '9': 0, '10': 'composite'},
  ],
  '8': const [
    const {'1': 'element'},
  ],
};

/// Descriptor for `Composite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compositeDescriptor = $convert.base64Decode('CglDb21wb3NpdGUSOwoFcGFydHMYASADKAsyJS54bXRwLm1lc3NhZ2VfY29udGVudHMuQ29tcG9zaXRlLlBhcnRSBXBhcnRzGpABCgRQYXJ0EjsKBHBhcnQYASABKAsyJS54bXRwLm1lc3NhZ2VfY29udGVudHMuRW5jb2RlZENvbnRlbnRIAFIEcGFydBJACgljb21wb3NpdGUYAiABKAsyIC54bXRwLm1lc3NhZ2VfY29udGVudHMuQ29tcG9zaXRlSABSCWNvbXBvc2l0ZUIJCgdlbGVtZW50');
