///
//  Generated code. Do not modify.
//  source: message_contents/invitation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use invitationV1Descriptor instead')
const InvitationV1$json = const {
  '1': 'InvitationV1',
  '2': const [
    const {'1': 'topic', '3': 1, '4': 1, '5': 9, '10': 'topic'},
    const {'1': 'context', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.InvitationV1.Context', '10': 'context'},
    const {'1': 'aes256_gcm_hkdf_sha256', '3': 3, '4': 1, '5': 11, '6': '.xmtp.message_contents.InvitationV1.Aes256gcmHkdfsha256', '9': 0, '10': 'aes256GcmHkdfSha256'},
  ],
  '3': const [InvitationV1_Aes256gcmHkdfsha256$json, InvitationV1_Context$json],
  '8': const [
    const {'1': 'encryption'},
  ],
};

@$core.Deprecated('Use invitationV1Descriptor instead')
const InvitationV1_Aes256gcmHkdfsha256$json = const {
  '1': 'Aes256gcmHkdfsha256',
  '2': const [
    const {'1': 'key_material', '3': 1, '4': 1, '5': 12, '10': 'keyMaterial'},
  ],
};

@$core.Deprecated('Use invitationV1Descriptor instead')
const InvitationV1_Context$json = const {
  '1': 'Context',
  '2': const [
    const {'1': 'conversation_id', '3': 1, '4': 1, '5': 9, '10': 'conversationId'},
    const {'1': 'metadata', '3': 2, '4': 3, '5': 11, '6': '.xmtp.message_contents.InvitationV1.Context.MetadataEntry', '10': 'metadata'},
  ],
  '3': const [InvitationV1_Context_MetadataEntry$json],
};

@$core.Deprecated('Use invitationV1Descriptor instead')
const InvitationV1_Context_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `InvitationV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitationV1Descriptor = $convert.base64Decode('CgxJbnZpdGF0aW9uVjESFAoFdG9waWMYASABKAlSBXRvcGljEkUKB2NvbnRleHQYAiABKAsyKy54bXRwLm1lc3NhZ2VfY29udGVudHMuSW52aXRhdGlvblYxLkNvbnRleHRSB2NvbnRleHQSbgoWYWVzMjU2X2djbV9oa2RmX3NoYTI1NhgDIAEoCzI3LnhtdHAubWVzc2FnZV9jb250ZW50cy5JbnZpdGF0aW9uVjEuQWVzMjU2Z2NtSGtkZnNoYTI1NkgAUhNhZXMyNTZHY21Ia2RmU2hhMjU2GjgKE0FlczI1NmdjbUhrZGZzaGEyNTYSIQoMa2V5X21hdGVyaWFsGAEgASgMUgtrZXlNYXRlcmlhbBrGAQoHQ29udGV4dBInCg9jb252ZXJzYXRpb25faWQYASABKAlSDmNvbnZlcnNhdGlvbklkElUKCG1ldGFkYXRhGAIgAygLMjkueG10cC5tZXNzYWdlX2NvbnRlbnRzLkludml0YXRpb25WMS5Db250ZXh0Lk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AUIMCgplbmNyeXB0aW9u');
@$core.Deprecated('Use sealedInvitationHeaderV1Descriptor instead')
const SealedInvitationHeaderV1$json = const {
  '1': 'SealedInvitationHeaderV1',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.SignedPublicKeyBundle', '10': 'sender'},
    const {'1': 'recipient', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.SignedPublicKeyBundle', '10': 'recipient'},
    const {'1': 'created_ns', '3': 3, '4': 1, '5': 4, '10': 'createdNs'},
  ],
};

/// Descriptor for `SealedInvitationHeaderV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sealedInvitationHeaderV1Descriptor = $convert.base64Decode('ChhTZWFsZWRJbnZpdGF0aW9uSGVhZGVyVjESRAoGc2VuZGVyGAEgASgLMiwueG10cC5tZXNzYWdlX2NvbnRlbnRzLlNpZ25lZFB1YmxpY0tleUJ1bmRsZVIGc2VuZGVyEkoKCXJlY2lwaWVudBgCIAEoCzIsLnhtdHAubWVzc2FnZV9jb250ZW50cy5TaWduZWRQdWJsaWNLZXlCdW5kbGVSCXJlY2lwaWVudBIdCgpjcmVhdGVkX25zGAMgASgEUgljcmVhdGVkTnM=');
@$core.Deprecated('Use sealedInvitationV1Descriptor instead')
const SealedInvitationV1$json = const {
  '1': 'SealedInvitationV1',
  '2': const [
    const {'1': 'header_bytes', '3': 1, '4': 1, '5': 12, '10': 'headerBytes'},
    const {'1': 'ciphertext', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.Ciphertext', '10': 'ciphertext'},
  ],
};

/// Descriptor for `SealedInvitationV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sealedInvitationV1Descriptor = $convert.base64Decode('ChJTZWFsZWRJbnZpdGF0aW9uVjESIQoMaGVhZGVyX2J5dGVzGAEgASgMUgtoZWFkZXJCeXRlcxJBCgpjaXBoZXJ0ZXh0GAIgASgLMiEueG10cC5tZXNzYWdlX2NvbnRlbnRzLkNpcGhlcnRleHRSCmNpcGhlcnRleHQ=');
@$core.Deprecated('Use sealedInvitationDescriptor instead')
const SealedInvitation$json = const {
  '1': 'SealedInvitation',
  '2': const [
    const {'1': 'v1', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.SealedInvitationV1', '9': 0, '10': 'v1'},
  ],
  '8': const [
    const {'1': 'version'},
  ],
};

/// Descriptor for `SealedInvitation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sealedInvitationDescriptor = $convert.base64Decode('ChBTZWFsZWRJbnZpdGF0aW9uEjsKAnYxGAEgASgLMikueG10cC5tZXNzYWdlX2NvbnRlbnRzLlNlYWxlZEludml0YXRpb25WMUgAUgJ2MUIJCgd2ZXJzaW9u');
