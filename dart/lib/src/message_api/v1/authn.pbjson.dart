///
//  Generated code. Do not modify.
//  source: message_api/v1/authn.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'identity_key', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.PublicKey', '10': 'identityKey'},
    const {'1': 'auth_data_bytes', '3': 2, '4': 1, '5': 12, '10': 'authDataBytes'},
    const {'1': 'auth_data_signature', '3': 3, '4': 1, '5': 11, '6': '.xmtp.message_contents.Signature', '10': 'authDataSignature'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor = $convert.base64Decode('CgVUb2tlbhJDCgxpZGVudGl0eV9rZXkYASABKAsyIC54bXRwLm1lc3NhZ2VfY29udGVudHMuUHVibGljS2V5UgtpZGVudGl0eUtleRImCg9hdXRoX2RhdGFfYnl0ZXMYAiABKAxSDWF1dGhEYXRhQnl0ZXMSUAoTYXV0aF9kYXRhX3NpZ25hdHVyZRgDIAEoCzIgLnhtdHAubWVzc2FnZV9jb250ZW50cy5TaWduYXR1cmVSEWF1dGhEYXRhU2lnbmF0dXJl');
@$core.Deprecated('Use authDataDescriptor instead')
const AuthData$json = const {
  '1': 'AuthData',
  '2': const [
    const {'1': 'wallet_addr', '3': 1, '4': 1, '5': 9, '10': 'walletAddr'},
    const {'1': 'created_ns', '3': 2, '4': 1, '5': 4, '10': 'createdNs'},
  ],
};

/// Descriptor for `AuthData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDataDescriptor = $convert.base64Decode('CghBdXRoRGF0YRIfCgt3YWxsZXRfYWRkchgBIAEoCVIKd2FsbGV0QWRkchIdCgpjcmVhdGVkX25zGAIgASgEUgljcmVhdGVkTnM=');
