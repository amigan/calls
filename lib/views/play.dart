import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart' as justaudio;
import 'audio_none.dart'
    if (dart.library.io) 'audio_mediakit.dart'
    if (dart.library.html) 'audio_web.dart';

import '../pb/stillbox.pb.dart';

class JustAudioDriver {
  final initializer = AudioInitializer();
  late justaudio.AudioPlayer player;

  JustAudioDriver() {
    initializer.audioInit();
    player = initializer.player;
  }

  Stream<justaudio.PlayerState> get playerStateStream {
    return player.playerStateStream;
  }

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
