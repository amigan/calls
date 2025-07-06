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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/struct.pb.dart' as $1;
import 'google/protobuf/timestamp.pb.dart' as $0;
import 'stillbox.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'stillbox.pbenum.dart';

enum Message_ToClientMessage {
  response, 
  call, 
  transcription, 
  notification, 
  popup, 
  error, 
  hello, 
  notSet
}

class Message extends $pb.GeneratedMessage {
  factory Message({
    CommandResponse? response,
    Call? call,
    CallTranscription? transcription,
    Notification? notification,
    UserPopup? popup,
    Error? error,
    Hello? hello,
  }) {
    final result = create();
    if (response != null) result.response = response;
    if (call != null) result.call = call;
    if (transcription != null) result.transcription = transcription;
    if (notification != null) result.notification = notification;
    if (popup != null) result.popup = popup;
    if (error != null) result.error = error;
    if (hello != null) result.hello = hello;
    return result;
  }

  Message._();

  factory Message.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Message.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Message_ToClientMessage> _Message_ToClientMessageByTag = {
    1 : Message_ToClientMessage.response,
    2 : Message_ToClientMessage.call,
    3 : Message_ToClientMessage.transcription,
    4 : Message_ToClientMessage.notification,
    5 : Message_ToClientMessage.popup,
    6 : Message_ToClientMessage.error,
    7 : Message_ToClientMessage.hello,
    0 : Message_ToClientMessage.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Message', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..aOM<CommandResponse>(1, _omitFieldNames ? '' : 'response', subBuilder: CommandResponse.create)
    ..aOM<Call>(2, _omitFieldNames ? '' : 'call', subBuilder: Call.create)
    ..aOM<CallTranscription>(3, _omitFieldNames ? '' : 'transcription', subBuilder: CallTranscription.create)
    ..aOM<Notification>(4, _omitFieldNames ? '' : 'notification', subBuilder: Notification.create)
    ..aOM<UserPopup>(5, _omitFieldNames ? '' : 'popup', subBuilder: UserPopup.create)
    ..aOM<Error>(6, _omitFieldNames ? '' : 'error', subBuilder: Error.create)
    ..aOM<Hello>(7, _omitFieldNames ? '' : 'hello', subBuilder: Hello.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  @$core.override
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  Message_ToClientMessage whichToClientMessage() => _Message_ToClientMessageByTag[$_whichOneof(0)]!;
  void clearToClientMessage() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CommandResponse get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(CommandResponse value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => $_clearField(1);
  @$pb.TagNumber(1)
  CommandResponse ensureResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  Call get call => $_getN(1);
  @$pb.TagNumber(2)
  set call(Call value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCall() => $_has(1);
  @$pb.TagNumber(2)
  void clearCall() => $_clearField(2);
  @$pb.TagNumber(2)
  Call ensureCall() => $_ensure(1);

  @$pb.TagNumber(3)
  CallTranscription get transcription => $_getN(2);
  @$pb.TagNumber(3)
  set transcription(CallTranscription value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTranscription() => $_has(2);
  @$pb.TagNumber(3)
  void clearTranscription() => $_clearField(3);
  @$pb.TagNumber(3)
  CallTranscription ensureTranscription() => $_ensure(2);

  @$pb.TagNumber(4)
  Notification get notification => $_getN(3);
  @$pb.TagNumber(4)
  set notification(Notification value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasNotification() => $_has(3);
  @$pb.TagNumber(4)
  void clearNotification() => $_clearField(4);
  @$pb.TagNumber(4)
  Notification ensureNotification() => $_ensure(3);

  @$pb.TagNumber(5)
  UserPopup get popup => $_getN(4);
  @$pb.TagNumber(5)
  set popup(UserPopup value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPopup() => $_has(4);
  @$pb.TagNumber(5)
  void clearPopup() => $_clearField(5);
  @$pb.TagNumber(5)
  UserPopup ensurePopup() => $_ensure(4);

  @$pb.TagNumber(6)
  Error get error => $_getN(5);
  @$pb.TagNumber(6)
  set error(Error value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(6)
  void clearError() => $_clearField(6);
  @$pb.TagNumber(6)
  Error ensureError() => $_ensure(5);

  @$pb.TagNumber(7)
  Hello get hello => $_getN(6);
  @$pb.TagNumber(7)
  set hello(Hello value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasHello() => $_has(6);
  @$pb.TagNumber(7)
  void clearHello() => $_clearField(7);
  @$pb.TagNumber(7)
  Hello ensureHello() => $_ensure(6);
}

enum CommandResponse_CommandResponse {
  tgInfo, 
  notSet
}

class CommandResponse extends $pb.GeneratedMessage {
  factory CommandResponse({
    $fixnum.Int64? commandId,
    TalkgroupInfo? tgInfo,
  }) {
    final result = create();
    if (commandId != null) result.commandId = commandId;
    if (tgInfo != null) result.tgInfo = tgInfo;
    return result;
  }

  CommandResponse._();

  factory CommandResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CommandResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CommandResponse_CommandResponse> _CommandResponse_CommandResponseByTag = {
    2 : CommandResponse_CommandResponse.tgInfo,
    0 : CommandResponse_CommandResponse.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommandResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..oo(0, [2])
    ..aInt64(1, _omitFieldNames ? '' : 'commandId')
    ..aOM<TalkgroupInfo>(2, _omitFieldNames ? '' : 'tgInfo', subBuilder: TalkgroupInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandResponse clone() => CommandResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandResponse copyWith(void Function(CommandResponse) updates) => super.copyWith((message) => updates(message as CommandResponse)) as CommandResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommandResponse create() => CommandResponse._();
  @$core.override
  CommandResponse createEmptyInstance() => create();
  static $pb.PbList<CommandResponse> createRepeated() => $pb.PbList<CommandResponse>();
  @$core.pragma('dart2js:noInline')
  static CommandResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandResponse>(create);
  static CommandResponse? _defaultInstance;

  CommandResponse_CommandResponse whichCommandResponse() => _CommandResponse_CommandResponseByTag[$_whichOneof(0)]!;
  void clearCommandResponse() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get commandId => $_getI64(0);
  @$pb.TagNumber(1)
  set commandId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommandId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommandId() => $_clearField(1);

  @$pb.TagNumber(2)
  TalkgroupInfo get tgInfo => $_getN(1);
  @$pb.TagNumber(2)
  set tgInfo(TalkgroupInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTgInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTgInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  TalkgroupInfo ensureTgInfo() => $_ensure(1);
}

class Call extends $pb.GeneratedMessage {
  factory Call({
    $core.String? id,
    $core.String? audioName,
    $core.String? audioType,
    $0.Timestamp? dateTime,
    $core.int? system,
    $core.int? talkgroup,
    $core.String? talkerAlias,
    $core.int? source,
    $fixnum.Int64? frequency,
    $core.Iterable<$fixnum.Int64>? frequencies,
    $core.Iterable<$core.int>? patches,
    $core.int? duration,
    $core.List<$core.int>? audio,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (audioName != null) result.audioName = audioName;
    if (audioType != null) result.audioType = audioType;
    if (dateTime != null) result.dateTime = dateTime;
    if (system != null) result.system = system;
    if (talkgroup != null) result.talkgroup = talkgroup;
    if (talkerAlias != null) result.talkerAlias = talkerAlias;
    if (source != null) result.source = source;
    if (frequency != null) result.frequency = frequency;
    if (frequencies != null) result.frequencies.addAll(frequencies);
    if (patches != null) result.patches.addAll(patches);
    if (duration != null) result.duration = duration;
    if (audio != null) result.audio = audio;
    return result;
  }

  Call._();

  factory Call.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Call.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Call', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'audioName', protoName: 'audioName')
    ..aOS(3, _omitFieldNames ? '' : 'audioType', protoName: 'audioType')
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'dateTime', subBuilder: $0.Timestamp.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'system', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'talkgroup', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'talkerAlias')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'source', $pb.PbFieldType.O3)
    ..aInt64(9, _omitFieldNames ? '' : 'frequency')
    ..p<$fixnum.Int64>(10, _omitFieldNames ? '' : 'frequencies', $pb.PbFieldType.K6)
    ..p<$core.int>(11, _omitFieldNames ? '' : 'patches', $pb.PbFieldType.K3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'duration', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(13, _omitFieldNames ? '' : 'audio', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Call clone() => Call()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Call copyWith(void Function(Call) updates) => super.copyWith((message) => updates(message as Call)) as Call;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Call create() => Call._();
  @$core.override
  Call createEmptyInstance() => create();
  static $pb.PbList<Call> createRepeated() => $pb.PbList<Call>();
  @$core.pragma('dart2js:noInline')
  static Call getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Call>(create);
  static Call? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get audioName => $_getSZ(1);
  @$pb.TagNumber(2)
  set audioName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAudioName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudioName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get audioType => $_getSZ(2);
  @$pb.TagNumber(3)
  set audioType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAudioType() => $_has(2);
  @$pb.TagNumber(3)
  void clearAudioType() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.Timestamp get dateTime => $_getN(3);
  @$pb.TagNumber(4)
  set dateTime($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearDateTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureDateTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get system => $_getIZ(4);
  @$pb.TagNumber(5)
  set system($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSystem() => $_has(4);
  @$pb.TagNumber(5)
  void clearSystem() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get talkgroup => $_getIZ(5);
  @$pb.TagNumber(6)
  set talkgroup($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTalkgroup() => $_has(5);
  @$pb.TagNumber(6)
  void clearTalkgroup() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get talkerAlias => $_getSZ(6);
  @$pb.TagNumber(7)
  set talkerAlias($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTalkerAlias() => $_has(6);
  @$pb.TagNumber(7)
  void clearTalkerAlias() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get source => $_getIZ(7);
  @$pb.TagNumber(8)
  set source($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSource() => $_has(7);
  @$pb.TagNumber(8)
  void clearSource() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get frequency => $_getI64(8);
  @$pb.TagNumber(9)
  set frequency($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFrequency() => $_has(8);
  @$pb.TagNumber(9)
  void clearFrequency() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$fixnum.Int64> get frequencies => $_getList(9);

  @$pb.TagNumber(11)
  $pb.PbList<$core.int> get patches => $_getList(10);

  @$pb.TagNumber(12)
  $core.int get duration => $_getIZ(11);
  @$pb.TagNumber(12)
  set duration($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDuration() => $_has(11);
  @$pb.TagNumber(12)
  void clearDuration() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get audio => $_getN(12);
  @$pb.TagNumber(13)
  set audio($core.List<$core.int> value) => $_setBytes(12, value);
  @$pb.TagNumber(13)
  $core.bool hasAudio() => $_has(12);
  @$pb.TagNumber(13)
  void clearAudio() => $_clearField(13);
}

class CallTranscription extends $pb.GeneratedMessage {
  factory CallTranscription({
    $core.String? id,
    $core.int? system,
    $core.int? talkgroup,
    $core.Iterable<$core.int>? patches,
    $core.String? transcript,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (system != null) result.system = system;
    if (talkgroup != null) result.talkgroup = talkgroup;
    if (patches != null) result.patches.addAll(patches);
    if (transcript != null) result.transcript = transcript;
    return result;
  }

  CallTranscription._();

  factory CallTranscription.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CallTranscription.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallTranscription', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'system', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'talkgroup', $pb.PbFieldType.O3)
    ..p<$core.int>(4, _omitFieldNames ? '' : 'patches', $pb.PbFieldType.K3)
    ..aOS(5, _omitFieldNames ? '' : 'transcript')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallTranscription clone() => CallTranscription()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallTranscription copyWith(void Function(CallTranscription) updates) => super.copyWith((message) => updates(message as CallTranscription)) as CallTranscription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallTranscription create() => CallTranscription._();
  @$core.override
  CallTranscription createEmptyInstance() => create();
  static $pb.PbList<CallTranscription> createRepeated() => $pb.PbList<CallTranscription>();
  @$core.pragma('dart2js:noInline')
  static CallTranscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallTranscription>(create);
  static CallTranscription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get system => $_getIZ(1);
  @$pb.TagNumber(2)
  set system($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSystem() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystem() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get talkgroup => $_getIZ(2);
  @$pb.TagNumber(3)
  set talkgroup($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTalkgroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearTalkgroup() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.int> get patches => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get transcript => $_getSZ(4);
  @$pb.TagNumber(5)
  set transcript($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTranscript() => $_has(4);
  @$pb.TagNumber(5)
  void clearTranscript() => $_clearField(5);
}

class Hello extends $pb.GeneratedMessage {
  factory Hello({
    ServerInfo? serverInfo,
  }) {
    final result = create();
    if (serverInfo != null) result.serverInfo = serverInfo;
    return result;
  }

  Hello._();

  factory Hello.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Hello.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Hello', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOM<ServerInfo>(1, _omitFieldNames ? '' : 'serverInfo', subBuilder: ServerInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Hello clone() => Hello()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Hello copyWith(void Function(Hello) updates) => super.copyWith((message) => updates(message as Hello)) as Hello;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Hello create() => Hello._();
  @$core.override
  Hello createEmptyInstance() => create();
  static $pb.PbList<Hello> createRepeated() => $pb.PbList<Hello>();
  @$core.pragma('dart2js:noInline')
  static Hello getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Hello>(create);
  static Hello? _defaultInstance;

  @$pb.TagNumber(1)
  ServerInfo get serverInfo => $_getN(0);
  @$pb.TagNumber(1)
  set serverInfo(ServerInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasServerInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  ServerInfo ensureServerInfo() => $_ensure(0);
}

class UserPopup extends $pb.GeneratedMessage {
  factory UserPopup({
    $core.String? msg,
  }) {
    final result = create();
    if (msg != null) result.msg = msg;
    return result;
  }

  UserPopup._();

  factory UserPopup.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UserPopup.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserPopup', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPopup clone() => UserPopup()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPopup copyWith(void Function(UserPopup) updates) => super.copyWith((message) => updates(message as UserPopup)) as UserPopup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPopup create() => UserPopup._();
  @$core.override
  UserPopup createEmptyInstance() => create();
  static $pb.PbList<UserPopup> createRepeated() => $pb.PbList<UserPopup>();
  @$core.pragma('dart2js:noInline')
  static UserPopup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserPopup>(create);
  static UserPopup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(1)
  set msg($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => $_clearField(1);
}

class Error extends $pb.GeneratedMessage {
  factory Error({
    $core.String? error,
    Command? command,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (command != null) result.command = command;
    return result;
  }

  Error._();

  factory Error.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Error.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..aOM<Command>(2, _omitFieldNames ? '' : 'command', subBuilder: Command.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Error copyWith(void Function(Error) updates) => super.copyWith((message) => updates(message as Error)) as Error;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  @$core.override
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);

  @$pb.TagNumber(2)
  Command get command => $_getN(1);
  @$pb.TagNumber(2)
  set command(Command value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommand() => $_clearField(2);
  @$pb.TagNumber(2)
  Command ensureCommand() => $_ensure(1);
}

class Notification extends $pb.GeneratedMessage {
  factory Notification({
    $0.Timestamp? dateTime,
    $core.String? msg,
    $core.String? actionUrl,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (msg != null) result.msg = msg;
    if (actionUrl != null) result.actionUrl = actionUrl;
    return result;
  }

  Notification._();

  factory Notification.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Notification.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notification', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'dateTime', subBuilder: $0.Timestamp.create)
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..aOS(3, _omitFieldNames ? '' : 'actionUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Notification clone() => Notification()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Notification copyWith(void Function(Notification) updates) => super.copyWith((message) => updates(message as Notification)) as Notification;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  @$core.override
  Notification createEmptyInstance() => create();
  static $pb.PbList<Notification> createRepeated() => $pb.PbList<Notification>();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get dateTime => $_getN(0);
  @$pb.TagNumber(1)
  set dateTime($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureDateTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get actionUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set actionUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasActionUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearActionUrl() => $_clearField(3);
}

enum Command_Command {
  liveCommand, 
  searchCommand, 
  tgCommand, 
  notSet
}

class Command extends $pb.GeneratedMessage {
  factory Command({
    $fixnum.Int64? commandId,
    Live? liveCommand,
    Search? searchCommand,
    Talkgroup? tgCommand,
  }) {
    final result = create();
    if (commandId != null) result.commandId = commandId;
    if (liveCommand != null) result.liveCommand = liveCommand;
    if (searchCommand != null) result.searchCommand = searchCommand;
    if (tgCommand != null) result.tgCommand = tgCommand;
    return result;
  }

  Command._();

  factory Command.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Command.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Command_Command> _Command_CommandByTag = {
    2 : Command_Command.liveCommand,
    3 : Command_Command.searchCommand,
    4 : Command_Command.tgCommand,
    0 : Command_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Command', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aInt64(1, _omitFieldNames ? '' : 'commandId')
    ..aOM<Live>(2, _omitFieldNames ? '' : 'liveCommand', subBuilder: Live.create)
    ..aOM<Search>(3, _omitFieldNames ? '' : 'searchCommand', subBuilder: Search.create)
    ..aOM<Talkgroup>(4, _omitFieldNames ? '' : 'tgCommand', subBuilder: Talkgroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Command clone() => Command()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Command copyWith(void Function(Command) updates) => super.copyWith((message) => updates(message as Command)) as Command;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Command create() => Command._();
  @$core.override
  Command createEmptyInstance() => create();
  static $pb.PbList<Command> createRepeated() => $pb.PbList<Command>();
  @$core.pragma('dart2js:noInline')
  static Command getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Command>(create);
  static Command? _defaultInstance;

  Command_Command whichCommand() => _Command_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get commandId => $_getI64(0);
  @$pb.TagNumber(1)
  set commandId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommandId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommandId() => $_clearField(1);

  @$pb.TagNumber(2)
  Live get liveCommand => $_getN(1);
  @$pb.TagNumber(2)
  set liveCommand(Live value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLiveCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearLiveCommand() => $_clearField(2);
  @$pb.TagNumber(2)
  Live ensureLiveCommand() => $_ensure(1);

  @$pb.TagNumber(3)
  Search get searchCommand => $_getN(2);
  @$pb.TagNumber(3)
  set searchCommand(Search value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSearchCommand() => $_has(2);
  @$pb.TagNumber(3)
  void clearSearchCommand() => $_clearField(3);
  @$pb.TagNumber(3)
  Search ensureSearchCommand() => $_ensure(2);

  @$pb.TagNumber(4)
  Talkgroup get tgCommand => $_getN(3);
  @$pb.TagNumber(4)
  set tgCommand(Talkgroup value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTgCommand() => $_has(3);
  @$pb.TagNumber(4)
  void clearTgCommand() => $_clearField(4);
  @$pb.TagNumber(4)
  Talkgroup ensureTgCommand() => $_ensure(3);
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
    final result = create();
    if (tg != null) result.tg = tg;
    if (systemName != null) result.systemName = systemName;
    if (name != null) result.name = name;
    if (group != null) result.group = group;
    if (alphaTag != null) result.alphaTag = alphaTag;
    if (frequency != null) result.frequency = frequency;
    if (tags != null) result.tags.addAll(tags);
    if (metadata != null) result.metadata = metadata;
    if (learned != null) result.learned = learned;
    return result;
  }

  TalkgroupInfo._();

  factory TalkgroupInfo.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TalkgroupInfo.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

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

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TalkgroupInfo clone() => TalkgroupInfo()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TalkgroupInfo copyWith(void Function(TalkgroupInfo) updates) => super.copyWith((message) => updates(message as TalkgroupInfo)) as TalkgroupInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TalkgroupInfo create() => TalkgroupInfo._();
  @$core.override
  TalkgroupInfo createEmptyInstance() => create();
  static $pb.PbList<TalkgroupInfo> createRepeated() => $pb.PbList<TalkgroupInfo>();
  @$core.pragma('dart2js:noInline')
  static TalkgroupInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TalkgroupInfo>(create);
  static TalkgroupInfo? _defaultInstance;

  @$pb.TagNumber(1)
  Talkgroup get tg => $_getN(0);
  @$pb.TagNumber(1)
  set tg(Talkgroup value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTg() => $_has(0);
  @$pb.TagNumber(1)
  void clearTg() => $_clearField(1);
  @$pb.TagNumber(1)
  Talkgroup ensureTg() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get systemName => $_getSZ(1);
  @$pb.TagNumber(2)
  set systemName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSystemName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get group => $_getSZ(3);
  @$pb.TagNumber(4)
  set group($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGroup() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroup() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get alphaTag => $_getSZ(4);
  @$pb.TagNumber(5)
  set alphaTag($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAlphaTag() => $_has(4);
  @$pb.TagNumber(5)
  void clearAlphaTag() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get frequency => $_getIZ(5);
  @$pb.TagNumber(6)
  set frequency($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFrequency() => $_has(5);
  @$pb.TagNumber(6)
  void clearFrequency() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get tags => $_getList(6);

  @$pb.TagNumber(8)
  $1.Struct get metadata => $_getN(7);
  @$pb.TagNumber(8)
  set metadata($1.Struct value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasMetadata() => $_has(7);
  @$pb.TagNumber(8)
  void clearMetadata() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Struct ensureMetadata() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.bool get learned => $_getBF(8);
  @$pb.TagNumber(9)
  set learned($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLearned() => $_has(8);
  @$pb.TagNumber(9)
  void clearLearned() => $_clearField(9);
}

class Live extends $pb.GeneratedMessage {
  factory Live({
    LiveState? state,
    Filter? filter,
    $core.bool? calls,
    $core.bool? transcripts,
  }) {
    final result = create();
    if (state != null) result.state = state;
    if (filter != null) result.filter = filter;
    if (calls != null) result.calls = calls;
    if (transcripts != null) result.transcripts = transcripts;
    return result;
  }

  Live._();

  factory Live.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Live.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Live', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..e<LiveState>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: LiveState.LS_STOPPED, valueOf: LiveState.valueOf, enumValues: LiveState.values)
    ..aOM<Filter>(2, _omitFieldNames ? '' : 'filter', subBuilder: Filter.create)
    ..aOB(3, _omitFieldNames ? '' : 'calls')
    ..aOB(4, _omitFieldNames ? '' : 'transcripts')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Live clone() => Live()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Live copyWith(void Function(Live) updates) => super.copyWith((message) => updates(message as Live)) as Live;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Live create() => Live._();
  @$core.override
  Live createEmptyInstance() => create();
  static $pb.PbList<Live> createRepeated() => $pb.PbList<Live>();
  @$core.pragma('dart2js:noInline')
  static Live getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Live>(create);
  static Live? _defaultInstance;

  @$pb.TagNumber(1)
  LiveState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(LiveState value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);

  @$pb.TagNumber(2)
  Filter get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter(Filter value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => $_clearField(2);
  @$pb.TagNumber(2)
  Filter ensureFilter() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get calls => $_getBF(2);
  @$pb.TagNumber(3)
  set calls($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCalls() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalls() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get transcripts => $_getBF(3);
  @$pb.TagNumber(4)
  set transcripts($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTranscripts() => $_has(3);
  @$pb.TagNumber(4)
  void clearTranscripts() => $_clearField(4);
}

class Talkgroup extends $pb.GeneratedMessage {
  factory Talkgroup({
    $core.int? system,
    $core.int? talkgroup,
  }) {
    final result = create();
    if (system != null) result.system = system;
    if (talkgroup != null) result.talkgroup = talkgroup;
    return result;
  }

  Talkgroup._();

  factory Talkgroup.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Talkgroup.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Talkgroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'system', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'talkgroup', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Talkgroup clone() => Talkgroup()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Talkgroup copyWith(void Function(Talkgroup) updates) => super.copyWith((message) => updates(message as Talkgroup)) as Talkgroup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Talkgroup create() => Talkgroup._();
  @$core.override
  Talkgroup createEmptyInstance() => create();
  static $pb.PbList<Talkgroup> createRepeated() => $pb.PbList<Talkgroup>();
  @$core.pragma('dart2js:noInline')
  static Talkgroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Talkgroup>(create);
  static Talkgroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get system => $_getIZ(0);
  @$pb.TagNumber(1)
  set system($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSystem() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystem() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get talkgroup => $_getIZ(1);
  @$pb.TagNumber(2)
  set talkgroup($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTalkgroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearTalkgroup() => $_clearField(2);
}

class Filter extends $pb.GeneratedMessage {
  factory Filter({
    $core.Iterable<Talkgroup>? talkgroups,
    $core.Iterable<Talkgroup>? talkgroupsNot,
    $core.Iterable<$core.String>? talkgroupTagsAll,
    $core.Iterable<$core.String>? talkgroupTagsAny,
    $core.Iterable<$core.String>? talkgroupTagsNot,
  }) {
    final result = create();
    if (talkgroups != null) result.talkgroups.addAll(talkgroups);
    if (talkgroupsNot != null) result.talkgroupsNot.addAll(talkgroupsNot);
    if (talkgroupTagsAll != null) result.talkgroupTagsAll.addAll(talkgroupTagsAll);
    if (talkgroupTagsAny != null) result.talkgroupTagsAny.addAll(talkgroupTagsAny);
    if (talkgroupTagsNot != null) result.talkgroupTagsNot.addAll(talkgroupTagsNot);
    return result;
  }

  Filter._();

  factory Filter.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Filter.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Filter', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..pc<Talkgroup>(1, _omitFieldNames ? '' : 'talkgroups', $pb.PbFieldType.PM, subBuilder: Talkgroup.create)
    ..pc<Talkgroup>(2, _omitFieldNames ? '' : 'talkgroupsNot', $pb.PbFieldType.PM, subBuilder: Talkgroup.create)
    ..pPS(3, _omitFieldNames ? '' : 'talkgroupTagsAll')
    ..pPS(4, _omitFieldNames ? '' : 'talkgroupTagsAny')
    ..pPS(5, _omitFieldNames ? '' : 'talkgroupTagsNot')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Filter clone() => Filter()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Filter copyWith(void Function(Filter) updates) => super.copyWith((message) => updates(message as Filter)) as Filter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Filter create() => Filter._();
  @$core.override
  Filter createEmptyInstance() => create();
  static $pb.PbList<Filter> createRepeated() => $pb.PbList<Filter>();
  @$core.pragma('dart2js:noInline')
  static Filter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Filter>(create);
  static Filter? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Talkgroup> get talkgroups => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<Talkgroup> get talkgroupsNot => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get talkgroupTagsAll => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get talkgroupTagsAny => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get talkgroupTagsNot => $_getList(4);
}

class Search extends $pb.GeneratedMessage {
  factory Search() => create();

  Search._();

  factory Search.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Search.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Search', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Search clone() => Search()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Search copyWith(void Function(Search) updates) => super.copyWith((message) => updates(message as Search)) as Search;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Search create() => Search._();
  @$core.override
  Search createEmptyInstance() => create();
  static $pb.PbList<Search> createRepeated() => $pb.PbList<Search>();
  @$core.pragma('dart2js:noInline')
  static Search getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Search>(create);
  static Search? _defaultInstance;
}

class ServerInfo extends $pb.GeneratedMessage {
  factory ServerInfo({
    $core.String? serverName,
    $core.String? version,
    $core.String? built,
    $core.String? platform,
    $core.String? dbSize,
  }) {
    final result = create();
    if (serverName != null) result.serverName = serverName;
    if (version != null) result.version = version;
    if (built != null) result.built = built;
    if (platform != null) result.platform = platform;
    if (dbSize != null) result.dbSize = dbSize;
    return result;
  }

  ServerInfo._();

  factory ServerInfo.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ServerInfo.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serverName')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'built')
    ..aOS(4, _omitFieldNames ? '' : 'platform')
    ..aOS(5, _omitFieldNames ? '' : 'dbSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServerInfo clone() => ServerInfo()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServerInfo copyWith(void Function(ServerInfo) updates) => super.copyWith((message) => updates(message as ServerInfo)) as ServerInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerInfo create() => ServerInfo._();
  @$core.override
  ServerInfo createEmptyInstance() => create();
  static $pb.PbList<ServerInfo> createRepeated() => $pb.PbList<ServerInfo>();
  @$core.pragma('dart2js:noInline')
  static ServerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerInfo>(create);
  static ServerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serverName => $_getSZ(0);
  @$pb.TagNumber(1)
  set serverName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasServerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get built => $_getSZ(2);
  @$pb.TagNumber(3)
  set built($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBuilt() => $_has(2);
  @$pb.TagNumber(3)
  void clearBuilt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get platform => $_getSZ(3);
  @$pb.TagNumber(4)
  set platform($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPlatform() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlatform() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get dbSize => $_getSZ(4);
  @$pb.TagNumber(5)
  set dbSize($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDbSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearDbSize() => $_clearField(5);
}

class CallTranscribeRequest extends $pb.GeneratedMessage {
  factory CallTranscribeRequest({
    Call? call,
    $core.String? callback,
    $core.String? token,
  }) {
    final result = create();
    if (call != null) result.call = call;
    if (callback != null) result.callback = callback;
    if (token != null) result.token = token;
    return result;
  }

  CallTranscribeRequest._();

  factory CallTranscribeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CallTranscribeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallTranscribeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'stillbox'), createEmptyInstance: create)
    ..aOM<Call>(1, _omitFieldNames ? '' : 'call', subBuilder: Call.create)
    ..aOS(2, _omitFieldNames ? '' : 'callback')
    ..aOS(3, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallTranscribeRequest clone() => CallTranscribeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallTranscribeRequest copyWith(void Function(CallTranscribeRequest) updates) => super.copyWith((message) => updates(message as CallTranscribeRequest)) as CallTranscribeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallTranscribeRequest create() => CallTranscribeRequest._();
  @$core.override
  CallTranscribeRequest createEmptyInstance() => create();
  static $pb.PbList<CallTranscribeRequest> createRepeated() => $pb.PbList<CallTranscribeRequest>();
  @$core.pragma('dart2js:noInline')
  static CallTranscribeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallTranscribeRequest>(create);
  static CallTranscribeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Call get call => $_getN(0);
  @$pb.TagNumber(1)
  set call(Call value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCall() => $_has(0);
  @$pb.TagNumber(1)
  void clearCall() => $_clearField(1);
  @$pb.TagNumber(1)
  Call ensureCall() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get callback => $_getSZ(1);
  @$pb.TagNumber(2)
  set callback($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCallback() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallback() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => $_clearField(3);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
