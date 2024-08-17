//
//  Generated code. Do not modify.
//  source: stillbox.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use liveStateDescriptor instead')
const LiveState$json = {
  '1': 'LiveState',
  '2': [
    {'1': 'LS_STOPPED', '2': 0},
    {'1': 'LS_LIVE', '2': 1},
    {'1': 'LS_PAUSED', '2': 2},
  ],
};

/// Descriptor for `LiveState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List liveStateDescriptor = $convert.base64Decode(
    'CglMaXZlU3RhdGUSDgoKTFNfU1RPUFBFRBAAEgsKB0xTX0xJVkUQARINCglMU19QQVVTRUQQAg'
    '==');

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'call', '3': 1, '4': 1, '5': 11, '6': '.stillbox.Call', '9': 0, '10': 'call'},
    {'1': 'tgInfo', '3': 2, '4': 1, '5': 11, '6': '.stillbox.TalkgroupInfo', '9': 0, '10': 'tgInfo'},
    {'1': 'notification', '3': 3, '4': 1, '5': 11, '6': '.stillbox.Notification', '9': 0, '10': 'notification'},
    {'1': 'popup', '3': 4, '4': 1, '5': 11, '6': '.stillbox.UserPopup', '9': 0, '10': 'popup'},
    {'1': 'error', '3': 5, '4': 1, '5': 11, '6': '.stillbox.Error', '9': 0, '10': 'error'},
  ],
  '8': [
    {'1': 'toClient_message'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEiQKBGNhbGwYASABKAsyDi5zdGlsbGJveC5DYWxsSABSBGNhbGwSMQoGdGdJbm'
    'ZvGAIgASgLMhcuc3RpbGxib3guVGFsa2dyb3VwSW5mb0gAUgZ0Z0luZm8SPAoMbm90aWZpY2F0'
    'aW9uGAMgASgLMhYuc3RpbGxib3guTm90aWZpY2F0aW9uSABSDG5vdGlmaWNhdGlvbhIrCgVwb3'
    'B1cBgEIAEoCzITLnN0aWxsYm94LlVzZXJQb3B1cEgAUgVwb3B1cBInCgVlcnJvchgFIAEoCzIP'
    'LnN0aWxsYm94LkVycm9ySABSBWVycm9yQhIKEHRvQ2xpZW50X21lc3NhZ2U=');

@$core.Deprecated('Use callDescriptor instead')
const Call$json = {
  '1': 'Call',
  '2': [
    {'1': 'audioName', '3': 1, '4': 1, '5': 9, '10': 'audioName'},
    {'1': 'audioType', '3': 2, '4': 1, '5': 9, '10': 'audioType'},
    {'1': 'dateTime', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateTime'},
    {'1': 'system', '3': 4, '4': 1, '5': 5, '10': 'system'},
    {'1': 'talkgroup', '3': 5, '4': 1, '5': 5, '10': 'talkgroup'},
    {'1': 'source', '3': 6, '4': 1, '5': 5, '10': 'source'},
    {'1': 'frequency', '3': 7, '4': 1, '5': 3, '10': 'frequency'},
    {'1': 'frequencies', '3': 8, '4': 3, '5': 3, '10': 'frequencies'},
    {'1': 'patches', '3': 9, '4': 3, '5': 5, '10': 'patches'},
    {'1': 'sources', '3': 10, '4': 3, '5': 5, '10': 'sources'},
    {'1': 'duration', '3': 11, '4': 1, '5': 5, '9': 0, '10': 'duration', '17': true},
    {'1': 'audio', '3': 12, '4': 1, '5': 12, '10': 'audio'},
  ],
  '8': [
    {'1': '_duration'},
  ],
};

/// Descriptor for `Call`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callDescriptor = $convert.base64Decode(
    'CgRDYWxsEhwKCWF1ZGlvTmFtZRgBIAEoCVIJYXVkaW9OYW1lEhwKCWF1ZGlvVHlwZRgCIAEoCV'
    'IJYXVkaW9UeXBlEjYKCGRhdGVUaW1lGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFt'
    'cFIIZGF0ZVRpbWUSFgoGc3lzdGVtGAQgASgFUgZzeXN0ZW0SHAoJdGFsa2dyb3VwGAUgASgFUg'
    'l0YWxrZ3JvdXASFgoGc291cmNlGAYgASgFUgZzb3VyY2USHAoJZnJlcXVlbmN5GAcgASgDUglm'
    'cmVxdWVuY3kSIAoLZnJlcXVlbmNpZXMYCCADKANSC2ZyZXF1ZW5jaWVzEhgKB3BhdGNoZXMYCS'
    'ADKAVSB3BhdGNoZXMSGAoHc291cmNlcxgKIAMoBVIHc291cmNlcxIfCghkdXJhdGlvbhgLIAEo'
    'BUgAUghkdXJhdGlvbogBARIUCgVhdWRpbxgMIAEoDFIFYXVkaW9CCwoJX2R1cmF0aW9u');

@$core.Deprecated('Use userPopupDescriptor instead')
const UserPopup$json = {
  '1': 'UserPopup',
  '2': [
    {'1': 'msg', '3': 1, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `UserPopup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPopupDescriptor = $convert.base64Decode(
    'CglVc2VyUG9wdXASEAoDbXNnGAEgASgJUgNtc2c=');

@$core.Deprecated('Use errorDescriptor instead')
const Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
    {'1': 'command', '3': 2, '4': 1, '5': 11, '6': '.stillbox.Command', '10': 'command'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchIUCgVlcnJvchgBIAEoCVIFZXJyb3ISKwoHY29tbWFuZBgCIAEoCzIRLnN0aWxsYm'
    '94LkNvbW1hbmRSB2NvbW1hbmQ=');

@$core.Deprecated('Use notificationDescriptor instead')
const Notification$json = {
  '1': 'Notification',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateTime'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'actionUrl', '3': 3, '4': 1, '5': 9, '10': 'actionUrl'},
  ],
};

/// Descriptor for `Notification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationDescriptor = $convert.base64Decode(
    'CgxOb3RpZmljYXRpb24SNgoIZGF0ZVRpbWUYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZX'
    'N0YW1wUghkYXRlVGltZRIQCgNtc2cYAiABKAlSA21zZxIcCglhY3Rpb25VcmwYAyABKAlSCWFj'
    'dGlvblVybA==');

@$core.Deprecated('Use commandDescriptor instead')
const Command$json = {
  '1': 'Command',
  '2': [
    {'1': 'liveCommand', '3': 1, '4': 1, '5': 11, '6': '.stillbox.Live', '9': 0, '10': 'liveCommand'},
    {'1': 'searchCommand', '3': 2, '4': 1, '5': 11, '6': '.stillbox.Search', '9': 0, '10': 'searchCommand'},
    {'1': 'tgCommand', '3': 3, '4': 1, '5': 11, '6': '.stillbox.Talkgroup', '9': 0, '10': 'tgCommand'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

/// Descriptor for `Command`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandDescriptor = $convert.base64Decode(
    'CgdDb21tYW5kEjIKC2xpdmVDb21tYW5kGAEgASgLMg4uc3RpbGxib3guTGl2ZUgAUgtsaXZlQ2'
    '9tbWFuZBI4Cg1zZWFyY2hDb21tYW5kGAIgASgLMhAuc3RpbGxib3guU2VhcmNoSABSDXNlYXJj'
    'aENvbW1hbmQSMwoJdGdDb21tYW5kGAMgASgLMhMuc3RpbGxib3guVGFsa2dyb3VwSABSCXRnQ2'
    '9tbWFuZEIJCgdjb21tYW5k');

@$core.Deprecated('Use talkgroupInfoDescriptor instead')
const TalkgroupInfo$json = {
  '1': 'TalkgroupInfo',
  '2': [
    {'1': 'tg', '3': 1, '4': 1, '5': 11, '6': '.stillbox.Talkgroup', '10': 'tg'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'group', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'group', '17': true},
    {'1': 'frequency', '3': 4, '4': 1, '5': 5, '9': 2, '10': 'frequency', '17': true},
    {'1': 'tags', '3': 5, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'metadata', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '9': 3, '10': 'metadata', '17': true},
    {'1': 'learned', '3': 7, '4': 1, '5': 8, '10': 'learned'},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_group'},
    {'1': '_frequency'},
    {'1': '_metadata'},
  ],
};

/// Descriptor for `TalkgroupInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List talkgroupInfoDescriptor = $convert.base64Decode(
    'Cg1UYWxrZ3JvdXBJbmZvEiMKAnRnGAEgASgLMhMuc3RpbGxib3guVGFsa2dyb3VwUgJ0ZxIXCg'
    'RuYW1lGAIgASgJSABSBG5hbWWIAQESGQoFZ3JvdXAYAyABKAlIAVIFZ3JvdXCIAQESIQoJZnJl'
    'cXVlbmN5GAQgASgFSAJSCWZyZXF1ZW5jeYgBARISCgR0YWdzGAUgAygJUgR0YWdzEjgKCG1ldG'
    'FkYXRhGAYgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdEgDUghtZXRhZGF0YYgBARIYCgds'
    'ZWFybmVkGAcgASgIUgdsZWFybmVkQgcKBV9uYW1lQggKBl9ncm91cEIMCgpfZnJlcXVlbmN5Qg'
    'sKCV9tZXRhZGF0YQ==');

@$core.Deprecated('Use liveDescriptor instead')
const Live$json = {
  '1': 'Live',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.stillbox.LiveState', '9': 0, '10': 'state', '17': true},
    {'1': 'filter', '3': 2, '4': 1, '5': 11, '6': '.stillbox.Filter', '9': 1, '10': 'filter', '17': true},
  ],
  '8': [
    {'1': '_state'},
    {'1': '_filter'},
  ],
};

/// Descriptor for `Live`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveDescriptor = $convert.base64Decode(
    'CgRMaXZlEi4KBXN0YXRlGAEgASgOMhMuc3RpbGxib3guTGl2ZVN0YXRlSABSBXN0YXRliAEBEi'
    '0KBmZpbHRlchgCIAEoCzIQLnN0aWxsYm94LkZpbHRlckgBUgZmaWx0ZXKIAQFCCAoGX3N0YXRl'
    'QgkKB19maWx0ZXI=');

@$core.Deprecated('Use talkgroupDescriptor instead')
const Talkgroup$json = {
  '1': 'Talkgroup',
  '2': [
    {'1': 'system', '3': 1, '4': 1, '5': 5, '10': 'system'},
    {'1': 'talkgroup', '3': 2, '4': 1, '5': 5, '10': 'talkgroup'},
  ],
};

/// Descriptor for `Talkgroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List talkgroupDescriptor = $convert.base64Decode(
    'CglUYWxrZ3JvdXASFgoGc3lzdGVtGAEgASgFUgZzeXN0ZW0SHAoJdGFsa2dyb3VwGAIgASgFUg'
    'l0YWxrZ3JvdXA=');

@$core.Deprecated('Use filterDescriptor instead')
const Filter$json = {
  '1': 'Filter',
  '2': [
    {'1': 'talkgroups', '3': 1, '4': 3, '5': 11, '6': '.stillbox.Talkgroup', '10': 'talkgroups'},
    {'1': 'talkgroups_not', '3': 2, '4': 3, '5': 11, '6': '.stillbox.Talkgroup', '10': 'talkgroupsNot'},
    {'1': 'talkgroup_tags_all', '3': 3, '4': 3, '5': 9, '10': 'talkgroupTagsAll'},
    {'1': 'talkgroup_tags_any', '3': 4, '4': 3, '5': 9, '10': 'talkgroupTagsAny'},
    {'1': 'talkgroup_tags_not', '3': 5, '4': 3, '5': 9, '10': 'talkgroupTagsNot'},
  ],
};

/// Descriptor for `Filter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List filterDescriptor = $convert.base64Decode(
    'CgZGaWx0ZXISMwoKdGFsa2dyb3VwcxgBIAMoCzITLnN0aWxsYm94LlRhbGtncm91cFIKdGFsa2'
    'dyb3VwcxI6Cg50YWxrZ3JvdXBzX25vdBgCIAMoCzITLnN0aWxsYm94LlRhbGtncm91cFINdGFs'
    'a2dyb3Vwc05vdBIsChJ0YWxrZ3JvdXBfdGFnc19hbGwYAyADKAlSEHRhbGtncm91cFRhZ3NBbG'
    'wSLAoSdGFsa2dyb3VwX3RhZ3NfYW55GAQgAygJUhB0YWxrZ3JvdXBUYWdzQW55EiwKEnRhbGtn'
    'cm91cF90YWdzX25vdBgFIAMoCVIQdGFsa2dyb3VwVGFnc05vdA==');

@$core.Deprecated('Use searchDescriptor instead')
const Search$json = {
  '1': 'Search',
};

/// Descriptor for `Search`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchDescriptor = $convert.base64Decode(
    'CgZTZWFyY2g=');

