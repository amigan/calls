//
//  Generated code. Do not modify.
//  source: stillbox.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LiveState extends $pb.ProtobufEnum {
  static const LiveState LS_STOPPED = LiveState._(0, _omitEnumNames ? '' : 'LS_STOPPED');
  static const LiveState LS_LIVE = LiveState._(1, _omitEnumNames ? '' : 'LS_LIVE');
  static const LiveState LS_PAUSED = LiveState._(2, _omitEnumNames ? '' : 'LS_PAUSED');

  static const $core.List<LiveState> values = <LiveState> [
    LS_STOPPED,
    LS_LIVE,
    LS_PAUSED,
  ];

  static final $core.Map<$core.int, LiveState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LiveState? valueOf($core.int value) => _byValue[value];

  const LiveState._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
