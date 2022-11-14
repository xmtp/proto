///
//  Generated code. Do not modify.
//  source: message_contents/public_key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use unsignedPublicKeyDescriptor instead')
const UnsignedPublicKey$json = const {
  '1': 'UnsignedPublicKey',
  '2': const [
    const {'1': 'created_ns', '3': 1, '4': 1, '5': 4, '10': 'createdNs'},
    const {'1': 'secp256k1_uncompressed', '3': 3, '4': 1, '5': 11, '6': '.xmtp.message_contents.UnsignedPublicKey.Secp256k1Uncompressed', '9': 0, '10': 'secp256k1Uncompressed'},
  ],
  '3': const [UnsignedPublicKey_Secp256k1Uncompressed$json],
  '8': const [
    const {'1': 'union'},
  ],
};

@$core.Deprecated('Use unsignedPublicKeyDescriptor instead')
const UnsignedPublicKey_Secp256k1Uncompressed$json = const {
  '1': 'Secp256k1Uncompressed',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 12, '10': 'bytes'},
  ],
};

/// Descriptor for `UnsignedPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unsignedPublicKeyDescriptor = $convert.base64Decode('ChFVbnNpZ25lZFB1YmxpY0tleRIdCgpjcmVhdGVkX25zGAEgASgEUgljcmVhdGVkTnMSdwoWc2VjcDI1NmsxX3VuY29tcHJlc3NlZBgDIAEoCzI+LnhtdHAubWVzc2FnZV9jb250ZW50cy5VbnNpZ25lZFB1YmxpY0tleS5TZWNwMjU2azFVbmNvbXByZXNzZWRIAFIVc2VjcDI1NmsxVW5jb21wcmVzc2VkGi0KFVNlY3AyNTZrMVVuY29tcHJlc3NlZBIUCgVieXRlcxgBIAEoDFIFYnl0ZXNCBwoFdW5pb24=');
@$core.Deprecated('Use signedPublicKeyDescriptor instead')
const SignedPublicKey$json = const {
  '1': 'SignedPublicKey',
  '2': const [
    const {'1': 'key_bytes', '3': 1, '4': 1, '5': 12, '10': 'keyBytes'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.Signature', '10': 'signature'},
  ],
};

/// Descriptor for `SignedPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signedPublicKeyDescriptor = $convert.base64Decode('Cg9TaWduZWRQdWJsaWNLZXkSGwoJa2V5X2J5dGVzGAEgASgMUghrZXlCeXRlcxI+CglzaWduYXR1cmUYAiABKAsyIC54bXRwLm1lc3NhZ2VfY29udGVudHMuU2lnbmF0dXJlUglzaWduYXR1cmU=');
@$core.Deprecated('Use signedPublicKeyBundleDescriptor instead')
const SignedPublicKeyBundle$json = const {
  '1': 'SignedPublicKeyBundle',
  '2': const [
    const {'1': 'identity_key', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.SignedPublicKey', '10': 'identityKey'},
    const {'1': 'pre_key', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.SignedPublicKey', '10': 'preKey'},
  ],
};

/// Descriptor for `SignedPublicKeyBundle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signedPublicKeyBundleDescriptor = $convert.base64Decode('ChVTaWduZWRQdWJsaWNLZXlCdW5kbGUSSQoMaWRlbnRpdHlfa2V5GAEgASgLMiYueG10cC5tZXNzYWdlX2NvbnRlbnRzLlNpZ25lZFB1YmxpY0tleVILaWRlbnRpdHlLZXkSPwoHcHJlX2tleRgCIAEoCzImLnhtdHAubWVzc2FnZV9jb250ZW50cy5TaWduZWRQdWJsaWNLZXlSBnByZUtleQ==');
@$core.Deprecated('Use publicKeyDescriptor instead')
const PublicKey$json = const {
  '1': 'PublicKey',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.Signature', '9': 1, '10': 'signature', '17': true},
    const {'1': 'secp256k1_uncompressed', '3': 3, '4': 1, '5': 11, '6': '.xmtp.message_contents.PublicKey.Secp256k1Uncompressed', '9': 0, '10': 'secp256k1Uncompressed'},
  ],
  '3': const [PublicKey_Secp256k1Uncompressed$json],
  '8': const [
    const {'1': 'union'},
    const {'1': '_signature'},
  ],
};

@$core.Deprecated('Use publicKeyDescriptor instead')
const PublicKey_Secp256k1Uncompressed$json = const {
  '1': 'Secp256k1Uncompressed',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 12, '10': 'bytes'},
  ],
};

/// Descriptor for `PublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicKeyDescriptor = $convert.base64Decode('CglQdWJsaWNLZXkSHAoJdGltZXN0YW1wGAEgASgEUgl0aW1lc3RhbXASQwoJc2lnbmF0dXJlGAIgASgLMiAueG10cC5tZXNzYWdlX2NvbnRlbnRzLlNpZ25hdHVyZUgBUglzaWduYXR1cmWIAQESbwoWc2VjcDI1NmsxX3VuY29tcHJlc3NlZBgDIAEoCzI2LnhtdHAubWVzc2FnZV9jb250ZW50cy5QdWJsaWNLZXkuU2VjcDI1NmsxVW5jb21wcmVzc2VkSABSFXNlY3AyNTZrMVVuY29tcHJlc3NlZBotChVTZWNwMjU2azFVbmNvbXByZXNzZWQSFAoFYnl0ZXMYASABKAxSBWJ5dGVzQgcKBXVuaW9uQgwKCl9zaWduYXR1cmU=');
@$core.Deprecated('Use publicKeyBundleDescriptor instead')
const PublicKeyBundle$json = const {
  '1': 'PublicKeyBundle',
  '2': const [
    const {'1': 'identity_key', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.PublicKey', '10': 'identityKey'},
    const {'1': 'pre_key', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.PublicKey', '10': 'preKey'},
  ],
};

/// Descriptor for `PublicKeyBundle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicKeyBundleDescriptor = $convert.base64Decode('Cg9QdWJsaWNLZXlCdW5kbGUSQwoMaWRlbnRpdHlfa2V5GAEgASgLMiAueG10cC5tZXNzYWdlX2NvbnRlbnRzLlB1YmxpY0tleVILaWRlbnRpdHlLZXkSOQoHcHJlX2tleRgCIAEoCzIgLnhtdHAubWVzc2FnZV9jb250ZW50cy5QdWJsaWNLZXlSBnByZUtleQ==');
