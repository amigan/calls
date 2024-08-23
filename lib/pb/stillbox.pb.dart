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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/struct.pb.dart' as $1;
import 'google/protobuf/timestamp.pb.dart' as $0;
import 'stillbox.pbenum.dart';

export 'stillbox.pbenum.dart';

enum Message_ToClientMessage {
  call, 
  tgInfo, 
  notification, 
  popup, 
  error, 
  notSet
}

class Message extends $pb.GeneratedMessage {
  factory Message({
    Call? call,
    TalkgroupInfo? tgInfo,
    Notification? notification,
    UserPopup? popup,
    Error? error,
  }) {
    final $result = create();
    if (call != null) {
      $result.call = call;
    }
    if (tgInfo != null) {
      $result.tgInfo = tgInfo;
    }
    if (notification != null) {
      $result.notification = notification;
    }
    if (popup != null) {
      $result.popup = popup;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  Message._() : super();
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Message_ToClientMessage> _Message_ToClientMessageByTag = {
    1 : Message_ToClientMessage.call,
    2 : Message_ToClientMessage.tgInfo,
    3 : Message_ToClientMessage.notification,
    4 : Message_ToClientMessage.popup,
    5 : Message_ToClientMessage.error,
    0 : Message_ToClientMessage.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Message', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<Call>(1, _omitFieldNames ? '' : 'call', subBuilder: Call.create)
    ..aOM<TalkgroupInfo>(2, _omitFieldNames ? '' : 'tgInfo', protoName: 'tgInfo', subBuilder: TalkgroupInfo.create)
    ..aOM<Notification>(3, _omitFieldNames ? '' : 'notification', subBuilder: Notification.create)
    ..aOM<UserPopup>(4, _omitFieldNames ? '' : 'popup', subBuilder: UserPopup.create)
    ..aOM<Error>(5, _omitFieldNames ? '' : 'error', subBuilder: Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  Message_ToClientMessage whichToClientMessage() => _Message_ToClientMessageByTag[$_whichOneof(0)]!;
  void clearToClientMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Call get call => $_getN(0);
  @$pb.TagNumber(1)
  set call(Call v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCall() => $_has(0);
  @$pb.TagNumber(1)
  void clearCall() => clearField(1);
  @$pb.TagNumber(1)
  Call ensureCall() => $_ensure(0);

  @$pb.TagNumber(2)
  TalkgroupInfo get tgInfo => $_getN(1);
  @$pb.TagNumber(2)
  set tgInfo(TalkgroupInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTgInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTgInfo() => clearField(2);
  @$pb.TagNumber(2)
  TalkgroupInfo ensureTgInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  Notification get notification => $_getN(2);
  @$pb.TagNumber(3)
  set notification(Notification v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotification() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotification() => clearField(3);
  @$pb.TagNumber(3)
  Notification ensureNotification() => $_ensure(2);

  @$pb.TagNumber(4)
  UserPopup get popup => $_getN(3);
  @$pb.TagNumber(4)
  set popup(UserPopup v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPopup() => $_has(3);
  @$pb.TagNumber(4)
  void clearPopup() => clearField(4);
  @$pb.TagNumber(4)
  UserPopup ensurePopup() => $_ensure(3);

  @$pb.TagNumber(5)
  Error get error => $_getN(4);
  @$pb.TagNumber(5)
  set error(Error v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasError() => $_has(4);
  @$pb.TagNumber(5)
  void clearError() => clearField(5);
  @$pb.TagNumber(5)
  Error ensureError() => $_ensure(4);
}

class Call extends $pb.GeneratedMessage {
  factory Call({
    $core.String? audioName,
    $core.String? audioType,
    $0.Timestamp? dateTime,
    $core.int? system,
    $core.int? talkgroup,
    $core.int? source,
    $fixnum.Int64? frequency,
    $core.Iterable<$fixnum.Int64>? frequencies,
    $core.Iterable<$core.int>? patches,
    $core.Iterable<$core.int>? sources,
    $core.int? duration,
    $core.List<$core.int>? audio,
  }) {
    final $result = create();
    if (audioName != null) {
      $result.audioName = audioName;
    }
    if (audioType != null) {
      $result.audioType = audioType;
    }
    if (dateTime != null) {
      $result.dateTime = dateTime;
    }
    if (system != null) {
      $result.system = system;
    }
    if (talkgroup != null) {
      $result.talkgroup = talkgroup;
    }
    if (source != null) {
      $result.source = source;
    }
    if (frequency != null) {
      $result.frequency = frequency;
    }
    if (frequencies != null) {
      $result.frequencies.addAll(frequencies);
    }
    if (patches != null) {
      $result.patches.addAll(patches);
    }
    if (sources != null) {
      $result.sources.addAll(sources);
    }
    if (duration != null) {
      $result.duration = duration;
    }
    if (audio != null) {
      $result.audio = audio;
    }
    return $result;
  }
  Call._() : super();
  factory Call.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Call.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Call', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'audioName', protoName: 'audioName')
    ..aOS(2, _omitFieldNames ? '' : 'audioType', protoName: 'audioType')
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime', subBuilder: $0.Timestamp.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'system', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'talkgroup', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'source', $pb.PbFieldType.O3)
    ..aInt64(7, _omitFieldNames ? '' : 'frequency')
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'frequencies', $pb.PbFieldType.K6)
    ..p<$core.int>(9, _omitFieldNames ? '' : 'patches', $pb.PbFieldType.K3)
    ..p<$core.int>(10, _omitFieldNames ? '' : 'sources', $pb.PbFieldType.K3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'duration', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(12, _omitFieldNames ? '' : 'audio', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Call clone() => Call()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Call copyWith(void Function(Call) updates) => super.copyWith((message) => updates(message as Call)) as Call;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Call create() => Call._();
  Call createEmptyInstance() => create();
  static $pb.PbList<Call> createRepeated() => $pb.PbList<Call>();
  @$core.pragma('dart2js:noInline')
  static Call getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Call>(create);
  static Call? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get audioName => $_getSZ(0);
  @$pb.TagNumber(1)
  set audioName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAudioName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAudioName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get audioType => $_getSZ(1);
  @$pb.TagNumber(2)
  set audioType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAudioType() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudioType() => clearField(2);

  @$pb.TagNumber(3)
  $0.Timestamp get dateTime => $_getN(2);
  @$pb.TagNumber(3)
  set dateTime($0.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearDateTime() => clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureDateTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get system => $_getIZ(3);
  @$pb.TagNumber(4)
  set system($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSystem() => $_has(3);
  @$pb.TagNumber(4)
  void clearSystem() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get talkgroup => $_getIZ(4);
  @$pb.TagNumber(5)
  set talkgroup($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTalkgroup() => $_has(4);
  @$pb.TagNumber(5)
  void clearTalkgroup() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get source => $_getIZ(5);
  @$pb.TagNumber(6)
  set source($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSource() => $_has(5);
  @$pb.TagNumber(6)
  void clearSource() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get frequency => $_getI64(6);
  @$pb.TagNumber(7)
  set frequency($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFrequency() => $_has(6);
  @$pb.TagNumber(7)
  void clearFrequency() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$fixnum.Int64> get frequencies => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.int> get patches => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$core.int> get sources => $_getList(9);

  @$pb.TagNumber(11)
  $core.int get duration => $_getIZ(10);
  @$pb.TagNumber(11)
  set duration($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDuration() => $_has(10);
  @$pb.TagNumber(11)
  void clearDuration() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get audio => $_getN(11);
  @$pb.TagNumber(12)
  set audio($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAudio() => $_has(11);
  @$pb.TagNumber(12)
  void clearAudio() => clearField(12);
}

class UserPopup extends $pb.GeneratedMessage {
  factory UserPopup({
    $core.String? msg,
  }) {
    final $result = create();
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  UserPopup._() : super();
  factory UserPopup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserPopup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserPopup', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserPopup clone() => UserPopup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserPopup copyWith(void Function(UserPopup) updates) => super.copyWith((message) => updates(message as UserPopup)) as UserPopup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPopup create() => UserPopup._();
  UserPopup createEmptyInstance() => create();
  static $pb.PbList<UserPopup> createRepeated() => $pb.PbList<UserPopup>();
  @$core.pragma('dart2js:noInline')
  static UserPopup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserPopup>(create);
  static UserPopup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(1)
  set msg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);
}

class Error extends $pb.GeneratedMessage {
  factory Error({
    $core.String? error,
    Command? command,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (command != null) {
      $result.command = command;
    }
    return $result;
  }
  Error._() : super();
  factory Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..aOM<Command>(2, _omitFieldNames ? '' : 'command', subBuilder: Command.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Error copyWith(void Function(Error) updates) => super.copyWith((message) => updates(message as Error)) as Error;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);

  @$pb.TagNumber(2)
  Command get command => $_getN(1);
  @$pb.TagNumber(2)
  set command(Command v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommand() => clearField(2);
  @$pb.TagNumber(2)
  Command ensureCommand() => $_ensure(1);
}

class Notification extends $pb.GeneratedMessage {
  factory Notification({
    $0.Timestamp? dateTime,
    $core.String? msg,
    $core.String? actionUrl,
  }) {
    final $result = create();
    if (dateTime != null) {
      $result.dateTime = dateTime;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    if (actionUrl != null) {
      $result.actionUrl = actionUrl;
    }
    return $result;
  }
  Notification._() : super();
  factory Notification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notification', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime', subBuilder: $0.Timestamp.create)
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..aOS(3, _omitFieldNames ? '' : 'actionUrl', protoName: 'actionUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notification clone() => Notification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notification copyWith(void Function(Notification) updates) => super.copyWith((message) => updates(message as Notification)) as Notification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  Notification createEmptyInstance() => create();
  static $pb.PbList<Notification> createRepeated() => $pb.PbList<Notification>();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get dateTime => $_getN(0);
  @$pb.TagNumber(1)
  set dateTime($0.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureDateTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get actionUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set actionUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActionUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearActionUrl() => clearField(3);
}

enum Command_Command {
  liveCommand, 
  searchCommand, 
  tgCommand, 
  notSet
}

class Command extends $pb.GeneratedMessage {
  factory Command({
    Live? liveCommand,
    Search? searchCommand,
    Talkgroup? tgCommand,
  }) {
    final $result = create();
    if (liveCommand != null) {
      $result.liveCommand = liveCommand;
    }
    if (searchCommand != null) {
      $result.searchCommand = searchCommand;
    }
    if (tgCommand != null) {
      $result.tgCommand = tgCommand;
    }
    return $result;
  }
  Command._() : super();
  factory Command.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Command.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Command_Command> _Command_CommandByTag = {
    1 : Command_Command.liveCommand,
    2 : Command_Command.searchCommand,
    3 : Command_Command.tgCommand,
    0 : Command_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Command', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<Live>(1, _omitFieldNames ? '' : 'liveCommand', protoName: 'liveCommand', subBuilder: Live.create)
    ..aOM<Search>(2, _omitFieldNames ? '' : 'searchCommand', protoName: 'searchCommand', subBuilder: Search.create)
    ..aOM<Talkgroup>(3, _omitFieldNames ? '' : 'tgCommand', protoName: 'tgCommand', subBuilder: Talkgroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Command clone() => Command()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Command copyWith(void Function(Command) updates) => super.copyWith((message) => updates(message as Command)) as Command;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Command create() => Command._();
  Command createEmptyInstance() => create();
  static $pb.PbList<Command> createRepeated() => $pb.PbList<Command>();
  @$core.pragma('dart2js:noInline')
  static Command getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Command>(create);
  static Command? _defaultInstance;

  Command_Command whichCommand() => _Command_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Live get liveCommand => $_getN(0);
  @$pb.TagNumber(1)
  set liveCommand(Live v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLiveCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiveCommand() => clearField(1);
  @$pb.TagNumber(1)
  Live ensureLiveCommand() => $_ensure(0);

  @$pb.TagNumber(2)
  Search get searchCommand => $_getN(1);
  @$pb.TagNumber(2)
  set searchCommand(Search v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSearchCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchCommand() => clearField(2);
  @$pb.TagNumber(2)
  Search ensureSearchCommand() => $_ensure(1);

  @$pb.TagNumber(3)
  Talkgroup get tgCommand => $_getN(2);
  @$pb.TagNumber(3)
  set tgCommand(Talkgroup v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTgCommand() => $_has(2);
  @$pb.TagNumber(3)
  void clearTgCommand() => clearField(3);
  @$pb.TagNumber(3)
  Talkgroup ensureTgCommand() => $_ensure(2);
}

class TalkgroupInfo extends $pb.GeneratedMessage {
  factory TalkgroupInfo({
    Talkgroup? tg,
    $core.String? systemName,
    $core.String? name,
    $core.String? group,
    $core.String? alphaTag,
    $core.int? frequency,
    $core.Iterable<$core.String>? tags,
    $1.Struct? metadata,
    $core.bool? learned,
  }) {
    final $result = create();
    if (tg != null) {
      $result.tg = tg;
    }
    if (systemName != null) {
      $result.systemName = systemName;
    }
    if (name != null) {
      $result.name = name;
    }
    if (group != null) {
      $result.group = group;
    }
    if (alphaTag != null) {
      $result.alphaTag = alphaTag;
    }
    if (frequency != null) {
      $result.frequency = frequency;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (learned != null) {
      $result.learned = learned;
    }
    return $result;
  }
  TalkgroupInfo._() : super();
  factory TalkgroupInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TalkgroupInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TalkgroupInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOM<Talkgroup>(1, _omitFieldNames ? '' : 'tg', subBuilder: Talkgroup.create)
    ..aOS(2, _omitFieldNames ? '' : 'systemName')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'group')
    ..aOS(5, _omitFieldNames ? '' : 'alphaTag')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.O3)
    ..pPS(7, _omitFieldNames ? '' : 'tags')
    ..aOM<$1.Struct>(8, _omitFieldNames ? '' : 'metadata', subBuilder: $1.Struct.create)
    ..aOB(9, _omitFieldNames ? '' : 'learned')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TalkgroupInfo clone() => TalkgroupInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TalkgroupInfo copyWith(void Function(TalkgroupInfo) updates) => super.copyWith((message) => updates(message as TalkgroupInfo)) as TalkgroupInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TalkgroupInfo create() => TalkgroupInfo._();
  TalkgroupInfo createEmptyInstance() => create();
  static $pb.PbList<TalkgroupInfo> createRepeated() => $pb.PbList<TalkgroupInfo>();
  @$core.pragma('dart2js:noInline')
  static TalkgroupInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TalkgroupInfo>(create);
  static TalkgroupInfo? _defaultInstance;

  @$pb.TagNumber(1)
  Talkgroup get tg => $_getN(0);
  @$pb.TagNumber(1)
  set tg(Talkgroup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTg() => $_has(0);
  @$pb.TagNumber(1)
  void clearTg() => clearField(1);
  @$pb.TagNumber(1)
  Talkgroup ensureTg() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get systemName => $_getSZ(1);
  @$pb.TagNumber(2)
  set systemName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSystemName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get group => $_getSZ(3);
  @$pb.TagNumber(4)
  set group($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGroup() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroup() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get alphaTag => $_getSZ(4);
  @$pb.TagNumber(5)
  set alphaTag($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAlphaTag() => $_has(4);
  @$pb.TagNumber(5)
  void clearAlphaTag() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get frequency => $_getIZ(5);
  @$pb.TagNumber(6)
  set frequency($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFrequency() => $_has(5);
  @$pb.TagNumber(6)
  void clearFrequency() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get tags => $_getList(6);

  @$pb.TagNumber(8)
  $1.Struct get metadata => $_getN(7);
  @$pb.TagNumber(8)
  set metadata($1.Struct v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasMetadata() => $_has(7);
  @$pb.TagNumber(8)
  void clearMetadata() => clearField(8);
  @$pb.TagNumber(8)
  $1.Struct ensureMetadata() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.bool get learned => $_getBF(8);
  @$pb.TagNumber(9)
  set learned($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLearned() => $_has(8);
  @$pb.TagNumber(9)
  void clearLearned() => clearField(9);
}

class Live extends $pb.GeneratedMessage {
  factory Live({
    LiveState? state,
    Filter? filter,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    if (filter != null) {
      $result.filter = filter;
    }
    return $result;
  }
  Live._() : super();
  factory Live.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Live.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Live', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..e<LiveState>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: LiveState.LS_STOPPED, valueOf: LiveState.valueOf, enumValues: LiveState.values)
    ..aOM<Filter>(2, _omitFieldNames ? '' : 'filter', subBuilder: Filter.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Live clone() => Live()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Live copyWith(void Function(Live) updates) => super.copyWith((message) => updates(message as Live)) as Live;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Live create() => Live._();
  Live createEmptyInstance() => create();
  static $pb.PbList<Live> createRepeated() => $pb.PbList<Live>();
  @$core.pragma('dart2js:noInline')
  static Live getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Live>(create);
  static Live? _defaultInstance;

  @$pb.TagNumber(1)
  LiveState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(LiveState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  Filter get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter(Filter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);
  @$pb.TagNumber(2)
  Filter ensureFilter() => $_ensure(1);
}

class Talkgroup extends $pb.GeneratedMessage {
  factory Talkgroup({
    $core.int? system,
    $core.int? talkgroup,
  }) {
    final $result = create();
    if (system != null) {
      $result.system = system;
    }
    if (talkgroup != null) {
      $result.talkgroup = talkgroup;
    }
    return $result;
  }
  Talkgroup._() : super();
  factory Talkgroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Talkgroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Talkgroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'system', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'talkgroup', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Talkgroup clone() => Talkgroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Talkgroup copyWith(void Function(Talkgroup) updates) => super.copyWith((message) => updates(message as Talkgroup)) as Talkgroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Talkgroup create() => Talkgroup._();
  Talkgroup createEmptyInstance() => create();
  static $pb.PbList<Talkgroup> createRepeated() => $pb.PbList<Talkgroup>();
  @$core.pragma('dart2js:noInline')
  static Talkgroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Talkgroup>(create);
  static Talkgroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get system => $_getIZ(0);
  @$pb.TagNumber(1)
  set system($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSystem() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystem() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get talkgroup => $_getIZ(1);
  @$pb.TagNumber(2)
  set talkgroup($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTalkgroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearTalkgroup() => clearField(2);
}

class Filter extends $pb.GeneratedMessage {
  factory Filter({
    $core.Iterable<Talkgroup>? talkgroups,
    $core.Iterable<Talkgroup>? talkgroupsNot,
    $core.Iterable<$core.String>? talkgroupTagsAll,
    $core.Iterable<$core.String>? talkgroupTagsAny,
    $core.Iterable<$core.String>? talkgroupTagsNot,
  }) {
    final $result = create();
    if (talkgroups != null) {
      $result.talkgroups.addAll(talkgroups);
    }
    if (talkgroupsNot != null) {
      $result.talkgroupsNot.addAll(talkgroupsNot);
    }
    if (talkgroupTagsAll != null) {
      $result.talkgroupTagsAll.addAll(talkgroupTagsAll);
    }
    if (talkgroupTagsAny != null) {
      $result.talkgroupTagsAny.addAll(talkgroupTagsAny);
    }
    if (talkgroupTagsNot != null) {
      $result.talkgroupTagsNot.addAll(talkgroupTagsNot);
    }
    return $result;
  }
  Filter._() : super();
  factory Filter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Filter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Filter', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..pc<Talkgroup>(1, _omitFieldNames ? '' : 'talkgroups', $pb.PbFieldType.PM, subBuilder: Talkgroup.create)
    ..pc<Talkgroup>(2, _omitFieldNames ? '' : 'talkgroupsNot', $pb.PbFieldType.PM, subBuilder: Talkgroup.create)
    ..pPS(3, _omitFieldNames ? '' : 'talkgroupTagsAll')
    ..pPS(4, _omitFieldNames ? '' : 'talkgroupTagsAny')
    ..pPS(5, _omitFieldNames ? '' : 'talkgroupTagsNot')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Filter clone() => Filter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Filter copyWith(void Function(Filter) updates) => super.copyWith((message) => updates(message as Filter)) as Filter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Filter create() => Filter._();
  Filter createEmptyInstance() => create();
  static $pb.PbList<Filter> createRepeated() => $pb.PbList<Filter>();
  @$core.pragma('dart2js:noInline')
  static Filter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Filter>(create);
  static Filter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Talkgroup> get talkgroups => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Talkgroup> get talkgroupsNot => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get talkgroupTagsAll => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get talkgroupTagsAny => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get talkgroupTagsNot => $_getList(4);
}

class Search extends $pb.GeneratedMessage {
  factory Search() => create();
  Search._() : super();
  factory Search.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Search.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Search', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Search clone() => Search()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Search copyWith(void Function(Search) updates) => super.copyWith((message) => updates(message as Search)) as Search;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Search create() => Search._();
  Search createEmptyInstance() => create();
  static $pb.PbList<Search> createRepeated() => $pb.PbList<Search>();
  @$core.pragma('dart2js:noInline')
  static Search getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Search>(create);
  static Search? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
