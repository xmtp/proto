///
//  Generated code. Do not modify.
//  source: message_api/v1/message_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sortDirectionDescriptor instead')
const SortDirection$json = const {
  '1': 'SortDirection',
  '2': const [
    const {'1': 'SORT_DIRECTION_UNSPECIFIED', '2': 0},
    const {'1': 'SORT_DIRECTION_ASCENDING', '2': 1},
    const {'1': 'SORT_DIRECTION_DESCENDING', '2': 2},
  ],
};

/// Descriptor for `SortDirection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sortDirectionDescriptor = $convert.base64Decode('Cg1Tb3J0RGlyZWN0aW9uEh4KGlNPUlRfRElSRUNUSU9OX1VOU1BFQ0lGSUVEEAASHAoYU09SVF9ESVJFQ1RJT05fQVNDRU5ESU5HEAESHQoZU09SVF9ESVJFQ1RJT05fREVTQ0VORElORxAC');
@$core.Deprecated('Use indexCursorDescriptor instead')
const IndexCursor$json = const {
  '1': 'IndexCursor',
  '2': const [
    const {'1': 'digest', '3': 1, '4': 1, '5': 12, '10': 'digest'},
    const {'1': 'sender_time_ns', '3': 2, '4': 1, '5': 4, '10': 'senderTimeNs'},
  ],
};

/// Descriptor for `IndexCursor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexCursorDescriptor = $convert.base64Decode('CgtJbmRleEN1cnNvchIWCgZkaWdlc3QYASABKAxSBmRpZ2VzdBIkCg5zZW5kZXJfdGltZV9ucxgCIAEoBFIMc2VuZGVyVGltZU5z');
@$core.Deprecated('Use cursorDescriptor instead')
const Cursor$json = const {
  '1': 'Cursor',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 11, '6': '.xmtp.message_api.v1.IndexCursor', '9': 0, '10': 'index'},
  ],
  '8': const [
    const {'1': 'cursor'},
  ],
};

/// Descriptor for `Cursor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cursorDescriptor = $convert.base64Decode('CgZDdXJzb3ISOAoFaW5kZXgYASABKAsyIC54bXRwLm1lc3NhZ2VfYXBpLnYxLkluZGV4Q3Vyc29ySABSBWluZGV4QggKBmN1cnNvcg==');
@$core.Deprecated('Use pagingInfoDescriptor instead')
const PagingInfo$json = const {
  '1': 'PagingInfo',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 13, '10': 'limit'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_api.v1.Cursor', '10': 'cursor'},
    const {'1': 'direction', '3': 3, '4': 1, '5': 14, '6': '.xmtp.message_api.v1.SortDirection', '10': 'direction'},
  ],
};

/// Descriptor for `PagingInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pagingInfoDescriptor = $convert.base64Decode('CgpQYWdpbmdJbmZvEhQKBWxpbWl0GAEgASgNUgVsaW1pdBIzCgZjdXJzb3IYAiABKAsyGy54bXRwLm1lc3NhZ2VfYXBpLnYxLkN1cnNvclIGY3Vyc29yEkAKCWRpcmVjdGlvbhgDIAEoDjIiLnhtdHAubWVzc2FnZV9hcGkudjEuU29ydERpcmVjdGlvblIJZGlyZWN0aW9u');
@$core.Deprecated('Use envelopeDescriptor instead')
const Envelope$json = const {
  '1': 'Envelope',
  '2': const [
    const {'1': 'content_topic', '3': 1, '4': 1, '5': 9, '10': 'contentTopic'},
    const {'1': 'timestamp_ns', '3': 2, '4': 1, '5': 4, '10': 'timestampNs'},
    const {'1': 'message', '3': 3, '4': 1, '5': 12, '10': 'message'},
  ],
};

/// Descriptor for `Envelope`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List envelopeDescriptor = $convert.base64Decode('CghFbnZlbG9wZRIjCg1jb250ZW50X3RvcGljGAEgASgJUgxjb250ZW50VG9waWMSIQoMdGltZXN0YW1wX25zGAIgASgEUgt0aW1lc3RhbXBOcxIYCgdtZXNzYWdlGAMgASgMUgdtZXNzYWdl');
@$core.Deprecated('Use publishRequestDescriptor instead')
const PublishRequest$json = const {
  '1': 'PublishRequest',
  '2': const [
    const {'1': 'envelopes', '3': 1, '4': 3, '5': 11, '6': '.xmtp.message_api.v1.Envelope', '10': 'envelopes'},
  ],
};

/// Descriptor for `PublishRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishRequestDescriptor = $convert.base64Decode('Cg5QdWJsaXNoUmVxdWVzdBI7CgllbnZlbG9wZXMYASADKAsyHS54bXRwLm1lc3NhZ2VfYXBpLnYxLkVudmVsb3BlUgllbnZlbG9wZXM=');
@$core.Deprecated('Use publishResponseDescriptor instead')
const PublishResponse$json = const {
  '1': 'PublishResponse',
};

/// Descriptor for `PublishResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishResponseDescriptor = $convert.base64Decode('Cg9QdWJsaXNoUmVzcG9uc2U=');
@$core.Deprecated('Use subscribeRequestDescriptor instead')
const SubscribeRequest$json = const {
  '1': 'SubscribeRequest',
  '2': const [
    const {'1': 'content_topics', '3': 1, '4': 3, '5': 9, '10': 'contentTopics'},
  ],
};

/// Descriptor for `SubscribeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeRequestDescriptor = $convert.base64Decode('ChBTdWJzY3JpYmVSZXF1ZXN0EiUKDmNvbnRlbnRfdG9waWNzGAEgAygJUg1jb250ZW50VG9waWNz');
@$core.Deprecated('Use subscribeAllRequestDescriptor instead')
const SubscribeAllRequest$json = const {
  '1': 'SubscribeAllRequest',
};

/// Descriptor for `SubscribeAllRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeAllRequestDescriptor = $convert.base64Decode('ChNTdWJzY3JpYmVBbGxSZXF1ZXN0');
@$core.Deprecated('Use queryRequestDescriptor instead')
const QueryRequest$json = const {
  '1': 'QueryRequest',
  '2': const [
    const {'1': 'content_topics', '3': 1, '4': 3, '5': 9, '10': 'contentTopics'},
    const {'1': 'start_time_ns', '3': 2, '4': 1, '5': 4, '10': 'startTimeNs'},
    const {'1': 'end_time_ns', '3': 3, '4': 1, '5': 4, '10': 'endTimeNs'},
    const {'1': 'paging_info', '3': 4, '4': 1, '5': 11, '6': '.xmtp.message_api.v1.PagingInfo', '10': 'pagingInfo'},
  ],
};

/// Descriptor for `QueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryRequestDescriptor = $convert.base64Decode('CgxRdWVyeVJlcXVlc3QSJQoOY29udGVudF90b3BpY3MYASADKAlSDWNvbnRlbnRUb3BpY3MSIgoNc3RhcnRfdGltZV9ucxgCIAEoBFILc3RhcnRUaW1lTnMSHgoLZW5kX3RpbWVfbnMYAyABKARSCWVuZFRpbWVOcxJACgtwYWdpbmdfaW5mbxgEIAEoCzIfLnhtdHAubWVzc2FnZV9hcGkudjEuUGFnaW5nSW5mb1IKcGFnaW5nSW5mbw==');
@$core.Deprecated('Use queryResponseDescriptor instead')
const QueryResponse$json = const {
  '1': 'QueryResponse',
  '2': const [
    const {'1': 'envelopes', '3': 1, '4': 3, '5': 11, '6': '.xmtp.message_api.v1.Envelope', '10': 'envelopes'},
    const {'1': 'paging_info', '3': 2, '4': 1, '5': 11, '6': '.xmtp.message_api.v1.PagingInfo', '10': 'pagingInfo'},
  ],
};

/// Descriptor for `QueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryResponseDescriptor = $convert.base64Decode('Cg1RdWVyeVJlc3BvbnNlEjsKCWVudmVsb3BlcxgBIAMoCzIdLnhtdHAubWVzc2FnZV9hcGkudjEuRW52ZWxvcGVSCWVudmVsb3BlcxJACgtwYWdpbmdfaW5mbxgCIAEoCzIfLnhtdHAubWVzc2FnZV9hcGkudjEuUGFnaW5nSW5mb1IKcGFnaW5nSW5mbw==');
