///
//  Generated code. Do not modify.
//  source: message_contents/ciphertext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use ciphertextDescriptor instead')
const Ciphertext$json = const {
  '1': 'Ciphertext',
  '2': const [
    const {'1': 'aes256_gcm_hkdf_sha256', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.Ciphertext.Aes256gcmHkdfsha256', '9': 0, '10': 'aes256GcmHkdfSha256'},
  ],
  '3': const [Ciphertext_Aes256gcmHkdfsha256$json],
  '8': const [
    const {'1': 'union'},
  ],
};

@$core.Deprecated('Use ciphertextDescriptor instead')
const Ciphertext_Aes256gcmHkdfsha256$json = const {
  '1': 'Aes256gcmHkdfsha256',
  '2': const [
    const {'1': 'hkdf_salt', '3': 1, '4': 1, '5': 12, '10': 'hkdfSalt'},
    const {'1': 'gcm_nonce', '3': 2, '4': 1, '5': 12, '10': 'gcmNonce'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 12, '10': 'payload'},
  ],
};

/// Descriptor for `Ciphertext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ciphertextDescriptor = $convert.base64Decode('CgpDaXBoZXJ0ZXh0EmwKFmFlczI1Nl9nY21faGtkZl9zaGEyNTYYASABKAsyNS54bXRwLm1lc3NhZ2VfY29udGVudHMuQ2lwaGVydGV4dC5BZXMyNTZnY21Ia2Rmc2hhMjU2SABSE2FlczI1NkdjbUhrZGZTaGEyNTYaaQoTQWVzMjU2Z2NtSGtkZnNoYTI1NhIbCgloa2RmX3NhbHQYASABKAxSCGhrZGZTYWx0EhsKCWdjbV9ub25jZRgCIAEoDFIIZ2NtTm9uY2USGAoHcGF5bG9hZBgDIAEoDFIHcGF5bG9hZEIHCgV1bmlvbg==');
