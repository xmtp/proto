///
//  Generated code. Do not modify.
//  source: message_contents/contact.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use contactBundleV1Descriptor instead')
const ContactBundleV1$json = const {
  '1': 'ContactBundleV1',
  '2': const [
    const {'1': 'key_bundle', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.PublicKeyBundle', '10': 'keyBundle'},
  ],
};

/// Descriptor for `ContactBundleV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactBundleV1Descriptor = $convert.base64Decode('Cg9Db250YWN0QnVuZGxlVjESRQoKa2V5X2J1bmRsZRgBIAEoCzImLnhtdHAubWVzc2FnZV9jb250ZW50cy5QdWJsaWNLZXlCdW5kbGVSCWtleUJ1bmRsZQ==');
@$core.Deprecated('Use contactBundleV2Descriptor instead')
const ContactBundleV2$json = const {
  '1': 'ContactBundleV2',
  '2': const [
    const {'1': 'key_bundle', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.SignedPublicKeyBundle', '10': 'keyBundle'},
  ],
};

/// Descriptor for `ContactBundleV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactBundleV2Descriptor = $convert.base64Decode('Cg9Db250YWN0QnVuZGxlVjISSwoKa2V5X2J1bmRsZRgBIAEoCzIsLnhtdHAubWVzc2FnZV9jb250ZW50cy5TaWduZWRQdWJsaWNLZXlCdW5kbGVSCWtleUJ1bmRsZQ==');
@$core.Deprecated('Use contactBundleDescriptor instead')
const ContactBundle$json = const {
  '1': 'ContactBundle',
  '2': const [
    const {'1': 'v1', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.ContactBundleV1', '9': 0, '10': 'v1'},
    const {'1': 'v2', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.ContactBundleV2', '9': 0, '10': 'v2'},
  ],
  '8': const [
    const {'1': 'version'},
  ],
};

/// Descriptor for `ContactBundle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactBundleDescriptor = $convert.base64Decode('Cg1Db250YWN0QnVuZGxlEjgKAnYxGAEgASgLMiYueG10cC5tZXNzYWdlX2NvbnRlbnRzLkNvbnRhY3RCdW5kbGVWMUgAUgJ2MRI4CgJ2MhgCIAEoCzImLnhtdHAubWVzc2FnZV9jb250ZW50cy5Db250YWN0QnVuZGxlVjJIAFICdjJCCQoHdmVyc2lvbg==');
