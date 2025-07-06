// This is a generated file - do not edit.
//
// Generated from stillbox.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

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

  static final $core.List<LiveState?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 2);
  static LiveState? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LiveState._(super.value, super.name);
}


const $core.bool _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
