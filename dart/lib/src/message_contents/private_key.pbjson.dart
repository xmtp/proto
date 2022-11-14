///
//  Generated code. Do not modify.
//  source: message_contents/private_key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use signedPrivateKeyDescriptor instead')
const SignedPrivateKey$json = const {
  '1': 'SignedPrivateKey',
  '2': const [
    const {'1': 'created_ns', '3': 1, '4': 1, '5': 4, '10': 'createdNs'},
    const {'1': 'secp256k1', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.SignedPrivateKey.Secp256k1', '9': 0, '10': 'secp256k1'},
    const {'1': 'public_key', '3': 3, '4': 1, '5': 11, '6': '.xmtp.message_contents.SignedPublicKey', '10': 'publicKey'},
  ],
  '3': const [SignedPrivateKey_Secp256k1$json],
  '8': const [
    const {'1': 'union'},
  ],
};

@$core.Deprecated('Use signedPrivateKeyDescriptor instead')
const SignedPrivateKey_Secp256k1$json = const {
  '1': 'Secp256k1',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 12, '10': 'bytes'},
  ],
};

/// Descriptor for `SignedPrivateKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signedPrivateKeyDescriptor = $convert.base64Decode('ChBTaWduZWRQcml2YXRlS2V5Eh0KCmNyZWF0ZWRfbnMYASABKARSCWNyZWF0ZWROcxJRCglzZWNwMjU2azEYAiABKAsyMS54bXRwLm1lc3NhZ2VfY29udGVudHMuU2lnbmVkUHJpdmF0ZUtleS5TZWNwMjU2azFIAFIJc2VjcDI1NmsxEkUKCnB1YmxpY19rZXkYAyABKAsyJi54bXRwLm1lc3NhZ2VfY29udGVudHMuU2lnbmVkUHVibGljS2V5UglwdWJsaWNLZXkaIQoJU2VjcDI1NmsxEhQKBWJ5dGVzGAEgASgMUgVieXRlc0IHCgV1bmlvbg==');
@$core.Deprecated('Use privateKeyBundleV2Descriptor instead')
const PrivateKeyBundleV2$json = const {
  '1': 'PrivateKeyBundleV2',
  '2': const [
    const {'1': 'identity_key', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.SignedPrivateKey', '10': 'identityKey'},
    const {'1': 'pre_keys', '3': 2, '4': 3, '5': 11, '6': '.xmtp.message_contents.SignedPrivateKey', '10': 'preKeys'},
  ],
};

/// Descriptor for `PrivateKeyBundleV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List privateKeyBundleV2Descriptor = $convert.base64Decode('ChJQcml2YXRlS2V5QnVuZGxlVjISSgoMaWRlbnRpdHlfa2V5GAEgASgLMicueG10cC5tZXNzYWdlX2NvbnRlbnRzLlNpZ25lZFByaXZhdGVLZXlSC2lkZW50aXR5S2V5EkIKCHByZV9rZXlzGAIgAygLMicueG10cC5tZXNzYWdlX2NvbnRlbnRzLlNpZ25lZFByaXZhdGVLZXlSB3ByZUtleXM=');
@$core.Deprecated('Use privateKeyDescriptor instead')
const PrivateKey$json = const {
  '1': 'PrivateKey',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'secp256k1', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.PrivateKey.Secp256k1', '9': 0, '10': 'secp256k1'},
    const {'1': 'public_key', '3': 3, '4': 1, '5': 11, '6': '.xmtp.message_contents.PublicKey', '10': 'publicKey'},
  ],
  '3': const [PrivateKey_Secp256k1$json],
  '8': const [
    const {'1': 'union'},
  ],
};

@$core.Deprecated('Use privateKeyDescriptor instead')
const PrivateKey_Secp256k1$json = const {
  '1': 'Secp256k1',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 12, '10': 'bytes'},
  ],
};

/// Descriptor for `PrivateKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List privateKeyDescriptor = $convert.base64Decode('CgpQcml2YXRlS2V5EhwKCXRpbWVzdGFtcBgBIAEoBFIJdGltZXN0YW1wEksKCXNlY3AyNTZrMRgCIAEoCzIrLnhtdHAubWVzc2FnZV9jb250ZW50cy5Qcml2YXRlS2V5LlNlY3AyNTZrMUgAUglzZWNwMjU2azESPwoKcHVibGljX2tleRgDIAEoCzIgLnhtdHAubWVzc2FnZV9jb250ZW50cy5QdWJsaWNLZXlSCXB1YmxpY0tleRohCglTZWNwMjU2azESFAoFYnl0ZXMYASABKAxSBWJ5dGVzQgcKBXVuaW9u');
@$core.Deprecated('Use privateKeyBundleV1Descriptor instead')
const PrivateKeyBundleV1$json = const {
  '1': 'PrivateKeyBundleV1',
  '2': const [
    const {'1': 'identity_key', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.PrivateKey', '10': 'identityKey'},
    const {'1': 'pre_keys', '3': 2, '4': 3, '5': 11, '6': '.xmtp.message_contents.PrivateKey', '10': 'preKeys'},
  ],
};

/// Descriptor for `PrivateKeyBundleV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List privateKeyBundleV1Descriptor = $convert.base64Decode('ChJQcml2YXRlS2V5QnVuZGxlVjESRAoMaWRlbnRpdHlfa2V5GAEgASgLMiEueG10cC5tZXNzYWdlX2NvbnRlbnRzLlByaXZhdGVLZXlSC2lkZW50aXR5S2V5EjwKCHByZV9rZXlzGAIgAygLMiEueG10cC5tZXNzYWdlX2NvbnRlbnRzLlByaXZhdGVLZXlSB3ByZUtleXM=');
@$core.Deprecated('Use privateKeyBundleDescriptor instead')
const PrivateKeyBundle$json = const {
  '1': 'PrivateKeyBundle',
  '2': const [
    const {'1': 'v1', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.PrivateKeyBundleV1', '9': 0, '10': 'v1'},
    const {'1': 'v2', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.PrivateKeyBundleV2', '9': 0, '10': 'v2'},
  ],
  '8': const [
    const {'1': 'version'},
  ],
};

/// Descriptor for `PrivateKeyBundle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List privateKeyBundleDescriptor = $convert.base64Decode('ChBQcml2YXRlS2V5QnVuZGxlEjsKAnYxGAEgASgLMikueG10cC5tZXNzYWdlX2NvbnRlbnRzLlByaXZhdGVLZXlCdW5kbGVWMUgAUgJ2MRI7CgJ2MhgCIAEoCzIpLnhtdHAubWVzc2FnZV9jb250ZW50cy5Qcml2YXRlS2V5QnVuZGxlVjJIAFICdjJCCQoHdmVyc2lvbg==');
@$core.Deprecated('Use encryptedPrivateKeyBundleV1Descriptor instead')
const EncryptedPrivateKeyBundleV1$json = const {
  '1': 'EncryptedPrivateKeyBundleV1',
  '2': const [
    const {'1': 'wallet_pre_key', '3': 1, '4': 1, '5': 12, '10': 'walletPreKey'},
    const {'1': 'ciphertext', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.Ciphertext', '10': 'ciphertext'},
  ],
};

/// Descriptor for `EncryptedPrivateKeyBundleV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptedPrivateKeyBundleV1Descriptor = $convert.base64Decode('ChtFbmNyeXB0ZWRQcml2YXRlS2V5QnVuZGxlVjESJAoOd2FsbGV0X3ByZV9rZXkYASABKAxSDHdhbGxldFByZUtleRJBCgpjaXBoZXJ0ZXh0GAIgASgLMiEueG10cC5tZXNzYWdlX2NvbnRlbnRzLkNpcGhlcnRleHRSCmNpcGhlcnRleHQ=');
@$core.Deprecated('Use encryptedPrivateKeyBundleDescriptor instead')
const EncryptedPrivateKeyBundle$json = const {
  '1': 'EncryptedPrivateKeyBundle',
  '2': const [
    const {'1': 'v1', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.EncryptedPrivateKeyBundleV1', '9': 0, '10': 'v1'},
  ],
  '8': const [
    const {'1': 'version'},
  ],
};

/// Descriptor for `EncryptedPrivateKeyBundle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptedPrivateKeyBundleDescriptor = $convert.base64Decode('ChlFbmNyeXB0ZWRQcml2YXRlS2V5QnVuZGxlEkQKAnYxGAEgASgLMjIueG10cC5tZXNzYWdlX2NvbnRlbnRzLkVuY3J5cHRlZFByaXZhdGVLZXlCdW5kbGVWMUgAUgJ2MUIJCgd2ZXJzaW9u');
