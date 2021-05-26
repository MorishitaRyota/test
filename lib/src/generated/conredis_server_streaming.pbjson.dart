///
//  Generated code. Do not modify.
//  source: conredis_server_streaming.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use resultDescriptor instead')
const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 9, '10': 'response'},
  ],
};

/// Descriptor for `Result`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert.base64Decode('CgZSZXN1bHQSGgoIcmVzcG9uc2UYASABKAlSCHJlc3BvbnNl');
@$core.Deprecated('Use sourceDescriptor instead')
const Source$json = const {
  '1': 'Source',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Source`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sourceDescriptor = $convert.base64Decode('CgZTb3VyY2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use articlesDescriptor instead')
const Articles$json = const {
  '1': 'Articles',
  '2': const [
    const {'1': 'sources', '3': 1, '4': 1, '5': 11, '6': '.conredis.Source', '10': 'sources'},
    const {'1': 'author', '3': 2, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'url', '3': 5, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'urlToImage', '3': 6, '4': 1, '5': 9, '10': 'urlToImage'},
    const {'1': 'publishedAt', '3': 7, '4': 1, '5': 9, '10': 'publishedAt'},
    const {'1': 'content', '3': 8, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `Articles`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List articlesDescriptor = $convert.base64Decode('CghBcnRpY2xlcxIqCgdzb3VyY2VzGAEgASgLMhAuY29ucmVkaXMuU291cmNlUgdzb3VyY2VzEhYKBmF1dGhvchgCIAEoCVIGYXV0aG9yEhQKBXRpdGxlGAMgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24SEAoDdXJsGAUgASgJUgN1cmwSHgoKdXJsVG9JbWFnZRgGIAEoCVIKdXJsVG9JbWFnZRIgCgtwdWJsaXNoZWRBdBgHIAEoCVILcHVibGlzaGVkQXQSGAoHY29udGVudBgIIAEoCVIHY29udGVudA==');
@$core.Deprecated('Use newsDescriptor instead')
const News$json = const {
  '1': 'News',
  '2': const [
    const {'1': 'Article', '3': 1, '4': 1, '5': 11, '6': '.conredis.Articles', '10': 'Article'},
  ],
};

/// Descriptor for `News`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newsDescriptor = $convert.base64Decode('CgROZXdzEiwKB0FydGljbGUYASABKAsyEi5jb25yZWRpcy5BcnRpY2xlc1IHQXJ0aWNsZQ==');
