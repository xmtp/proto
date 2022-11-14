///
//  Generated code. Do not modify.
//  source: message_contents/xmtp_envelope.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use compressionDescriptor instead')
const Compression$json = const {
  '1': 'Compression',
  '2': const [
    const {'1': 'COMPRESSION_DEFLATE', '2': 0},
    const {'1': 'COMPRESSION_GZIP', '2': 1},
  ],
};

/// Descriptor for `Compression`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List compressionDescriptor = $convert.base64Decode('CgtDb21wcmVzc2lvbhIXChNDT01QUkVTU0lPTl9ERUZMQVRFEAASFAoQQ09NUFJFU1NJT05fR1pJUBAB');
@$core.Deprecated('Use contentTypeIdDescriptor instead')
const ContentTypeId$json = const {
  '1': 'ContentTypeId',
  '2': const [
    const {'1': 'authority_id', '3': 1, '4': 1, '5': 9, '10': 'authorityId'},
    const {'1': 'type_id', '3': 2, '4': 1, '5': 9, '10': 'typeId'},
    const {'1': 'version_major', '3': 3, '4': 1, '5': 13, '10': 'versionMajor'},
    const {'1': 'version_minor', '3': 4, '4': 1, '5': 13, '10': 'versionMinor'},
  ],
};

/// Descriptor for `ContentTypeId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contentTypeIdDescriptor = $convert.base64Decode('Cg1Db250ZW50VHlwZUlkEiEKDGF1dGhvcml0eV9pZBgBIAEoCVILYXV0aG9yaXR5SWQSFwoHdHlwZV9pZBgCIAEoCVIGdHlwZUlkEiMKDXZlcnNpb25fbWFqb3IYAyABKA1SDHZlcnNpb25NYWpvchIjCg12ZXJzaW9uX21pbm9yGAQgASgNUgx2ZXJzaW9uTWlub3I=');
@$core.Deprecated('Use encodedContentDescriptor instead')
const EncodedContent$json = const {
  '1': 'EncodedContent',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.ContentTypeId', '10': 'type'},
    const {'1': 'parameters', '3': 2, '4': 3, '5': 11, '6': '.xmtp.message_contents.EncodedContent.ParametersEntry', '10': 'parameters'},
    const {'1': 'fallback', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'fallback', '17': true},
    const {'1': 'compression', '3': 5, '4': 1, '5': 14, '6': '.xmtp.message_contents.Compression', '9': 1, '10': 'compression', '17': true},
    const {'1': 'content', '3': 4, '4': 1, '5': 12, '10': 'content'},
  ],
  '3': const [EncodedContent_ParametersEntry$json],
  '8': const [
    const {'1': '_fallback'},
    const {'1': '_compression'},
  ],
};

@$core.Deprecated('Use encodedContentDescriptor instead')
const EncodedContent_ParametersEntry$json = const {
  '1': 'ParametersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `EncodedContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encodedContentDescriptor = $convert.base64Decode('Cg5FbmNvZGVkQ29udGVudBI4CgR0eXBlGAEgASgLMiQueG10cC5tZXNzYWdlX2NvbnRlbnRzLkNvbnRlbnRUeXBlSWRSBHR5cGUSVQoKcGFyYW1ldGVycxgCIAMoCzI1LnhtdHAubWVzc2FnZV9jb250ZW50cy5FbmNvZGVkQ29udGVudC5QYXJhbWV0ZXJzRW50cnlSCnBhcmFtZXRlcnMSHwoIZmFsbGJhY2sYAyABKAlIAFIIZmFsbGJhY2uIAQESSQoLY29tcHJlc3Npb24YBSABKA4yIi54bXRwLm1lc3NhZ2VfY29udGVudHMuQ29tcHJlc3Npb25IAVILY29tcHJlc3Npb26IAQESGAoHY29udGVudBgEIAEoDFIHY29udGVudBo9Cg9QYXJhbWV0ZXJzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AUILCglfZmFsbGJhY2tCDgoMX2NvbXByZXNzaW9u');
@$core.Deprecated('Use signedContentDescriptor instead')
const SignedContent$json = const {
  '1': 'SignedContent',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 12, '10': 'payload'},
    const {'1': 'sender', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.SignedPublicKeyBundle', '10': 'sender'},
    const {'1': 'signature', '3': 3, '4': 1, '5': 11, '6': '.xmtp.message_contents.Signature', '10': 'signature'},
  ],
};

/// Descriptor for `SignedContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signedContentDescriptor = $convert.base64Decode('Cg1TaWduZWRDb250ZW50EhgKB3BheWxvYWQYASABKAxSB3BheWxvYWQSRAoGc2VuZGVyGAIgASgLMiwueG10cC5tZXNzYWdlX2NvbnRlbnRzLlNpZ25lZFB1YmxpY0tleUJ1bmRsZVIGc2VuZGVyEj4KCXNpZ25hdHVyZRgDIAEoCzIgLnhtdHAubWVzc2FnZV9jb250ZW50cy5TaWduYXR1cmVSCXNpZ25hdHVyZQ==');
@$core.Deprecated('Use messageHeaderV1Descriptor instead')
const MessageHeaderV1$json = const {
  '1': 'MessageHeaderV1',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.PublicKeyBundle', '10': 'sender'},
    const {'1': 'recipient', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.PublicKeyBundle', '10': 'recipient'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 4, '10': 'timestamp'},
  ],
};

/// Descriptor for `MessageHeaderV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageHeaderV1Descriptor = $convert.base64Decode('Cg9NZXNzYWdlSGVhZGVyVjESPgoGc2VuZGVyGAEgASgLMiYueG10cC5tZXNzYWdlX2NvbnRlbnRzLlB1YmxpY0tleUJ1bmRsZVIGc2VuZGVyEkQKCXJlY2lwaWVudBgCIAEoCzImLnhtdHAubWVzc2FnZV9jb250ZW50cy5QdWJsaWNLZXlCdW5kbGVSCXJlY2lwaWVudBIcCgl0aW1lc3RhbXAYAyABKARSCXRpbWVzdGFtcA==');
@$core.Deprecated('Use messageV1Descriptor instead')
const MessageV1$json = const {
  '1': 'MessageV1',
  '2': const [
    const {'1': 'header_bytes', '3': 1, '4': 1, '5': 12, '10': 'headerBytes'},
    const {'1': 'ciphertext', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.Ciphertext', '10': 'ciphertext'},
  ],
};

/// Descriptor for `MessageV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageV1Descriptor = $convert.base64Decode('CglNZXNzYWdlVjESIQoMaGVhZGVyX2J5dGVzGAEgASgMUgtoZWFkZXJCeXRlcxJBCgpjaXBoZXJ0ZXh0GAIgASgLMiEueG10cC5tZXNzYWdlX2NvbnRlbnRzLkNpcGhlcnRleHRSCmNpcGhlcnRleHQ=');
@$core.Deprecated('Use messageHeaderV2Descriptor instead')
const MessageHeaderV2$json = const {
  '1': 'MessageHeaderV2',
  '2': const [
    const {'1': 'created_ns', '3': 1, '4': 1, '5': 4, '10': 'createdNs'},
    const {'1': 'topic', '3': 2, '4': 1, '5': 9, '10': 'topic'},
  ],
};

/// Descriptor for `MessageHeaderV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageHeaderV2Descriptor = $convert.base64Decode('Cg9NZXNzYWdlSGVhZGVyVjISHQoKY3JlYXRlZF9ucxgBIAEoBFIJY3JlYXRlZE5zEhQKBXRvcGljGAIgASgJUgV0b3BpYw==');
@$core.Deprecated('Use messageV2Descriptor instead')
const MessageV2$json = const {
  '1': 'MessageV2',
  '2': const [
    const {'1': 'header_bytes', '3': 1, '4': 1, '5': 12, '10': 'headerBytes'},
    const {'1': 'ciphertext', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.Ciphertext', '10': 'ciphertext'},
  ],
};

/// Descriptor for `MessageV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageV2Descriptor = $convert.base64Decode('CglNZXNzYWdlVjISIQoMaGVhZGVyX2J5dGVzGAEgASgMUgtoZWFkZXJCeXRlcxJBCgpjaXBoZXJ0ZXh0GAIgASgLMiEueG10cC5tZXNzYWdlX2NvbnRlbnRzLkNpcGhlcnRleHRSCmNpcGhlcnRleHQ=');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'v1', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.MessageV1', '9': 0, '10': 'v1'},
    const {'1': 'v2', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.MessageV2', '9': 0, '10': 'v2'},
  ],
  '8': const [
    const {'1': 'version'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEjIKAnYxGAEgASgLMiAueG10cC5tZXNzYWdlX2NvbnRlbnRzLk1lc3NhZ2VWMUgAUgJ2MRIyCgJ2MhgCIAEoCzIgLnhtdHAubWVzc2FnZV9jb250ZW50cy5NZXNzYWdlVjJIAFICdjJCCQoHdmVyc2lvbg==');
