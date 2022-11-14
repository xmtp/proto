///
//  Generated code. Do not modify.
//  source: message_contents/signature.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use signatureDescriptor instead')
const Signature$json = const {
  '1': 'Signature',
  '2': const [
    const {'1': 'ecdsa_compact', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_contents.Signature.ECDSACompact', '9': 0, '10': 'ecdsaCompact'},
    const {'1': 'wallet_ecdsa_compact', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_contents.Signature.WalletECDSACompact', '9': 0, '10': 'walletEcdsaCompact'},
  ],
  '3': const [Signature_ECDSACompact$json, Signature_WalletECDSACompact$json],
  '8': const [
    const {'1': 'union'},
  ],
};

@$core.Deprecated('Use signatureDescriptor instead')
const Signature_ECDSACompact$json = const {
  '1': 'ECDSACompact',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 12, '10': 'bytes'},
    const {'1': 'recovery', '3': 2, '4': 1, '5': 13, '10': 'recovery'},
  ],
};

@$core.Deprecated('Use signatureDescriptor instead')
const Signature_WalletECDSACompact$json = const {
  '1': 'WalletECDSACompact',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 12, '10': 'bytes'},
    const {'1': 'recovery', '3': 2, '4': 1, '5': 13, '10': 'recovery'},
  ],
};

/// Descriptor for `Signature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureDescriptor = $convert.base64Decode('CglTaWduYXR1cmUSVAoNZWNkc2FfY29tcGFjdBgBIAEoCzItLnhtdHAubWVzc2FnZV9jb250ZW50cy5TaWduYXR1cmUuRUNEU0FDb21wYWN0SABSDGVjZHNhQ29tcGFjdBJnChR3YWxsZXRfZWNkc2FfY29tcGFjdBgCIAEoCzIzLnhtdHAubWVzc2FnZV9jb250ZW50cy5TaWduYXR1cmUuV2FsbGV0RUNEU0FDb21wYWN0SABSEndhbGxldEVjZHNhQ29tcGFjdBpACgxFQ0RTQUNvbXBhY3QSFAoFYnl0ZXMYASABKAxSBWJ5dGVzEhoKCHJlY292ZXJ5GAIgASgNUghyZWNvdmVyeRpGChJXYWxsZXRFQ0RTQUNvbXBhY3QSFAoFYnl0ZXMYASABKAxSBWJ5dGVzEhoKCHJlY292ZXJ5GAIgASgNUghyZWNvdmVyeUIHCgV1bmlvbg==');
