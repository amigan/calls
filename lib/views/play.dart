import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart' as justaudio;
import 'audio_none.dart'
    if (dart.library.io) 'audio_mediakit.dart'
    if (dart.library.html) 'audio_web.dart';
//import 'package:audioplayers/audioplayers.dart' as auplay;
//import 'dart:io' show Platform;

import '../pb/stillbox.pb.dart';

abstract class AudioDriver {
  Future<void> play(Call call);
  Stream<justaudio.PlayerState> get playerStateStream;
}

class Player {
  late AudioDriver driver;
  Player() {
//    if (Platform.isMacOS || Platform.isIOS) {
    driver = JustAudioDriver();
//    } else {
//      driver = AudioPlayersDriver();
//    }
  }

  Future<void> play(Call call) async {
    await driver.play(call);
  }
}

/*
class AudioPlayersDriver implements AudioDriver {
  final player = auplay.AudioPlayer();

  @override
  Future<void> play(Call call) {
    return player.play(auplay.BytesSource(Uint8List.fromList(call.audio)));
  }
}
*/

class JustAudioDriver implements AudioDriver {
  final player = justaudio.AudioPlayer();
  final initializer = AudioInitializer();

  JustAudioDriver() {
    initializer.audioInit();
  }

  @override
  Stream<justaudio.PlayerState> get playerStateStream {
    return player.playerStateStream;
  }

  @override
  Future<void> play(Call call) async {
    player.setAudioSource(CallBytesSource(call));
    await player.play();
  }
}

class CallBytesSource extends justaudio.StreamAudioSource {
  late Uint8List _buffer;
  final Call _call;

  factory CallBytesSource(Call call) {
    return CallBytesSource._(call, Uint8List.fromList(call.audio));
  }

  CallBytesSource._(this._call, this._buffer) : super(tag: 'CallBytesSource');

  @override
  Future<justaudio.StreamAudioResponse> request([int? start, int? end]) async {
    // Returning the stream audio response with the parameters
    return justaudio.StreamAudioResponse(
      sourceLength: _buffer.length,
      contentLength: (end ?? _buffer.length) - (start ?? 0),
      offset: start ?? 0,
      stream: Stream.fromIterable([_buffer.sublist(start ?? 0, end)]),
      contentType: _call.audioType,
    );
  }
}
