import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import '../pb/stillbox.pb.dart';

class Player {
  final player = AudioPlayer();
  Player();
  Future<void> play(Call call) {
    // TODO make a queue
    return player.play(BytesSource(Uint8List.fromList(call.audio)));
  }
}

/*
for just_audio (add just_audio and just_audio_linux)
class CallBytesSource extends StreamAudioSource {
  late Uint8List _buffer;
  final Call _call;

  factory CallBytesSource(Call call) {
    return CallBytesSource._(call, Uint8List.fromList(call.audio));
  }

  CallBytesSource._(this._call, this._buffer) : super(tag: 'CallBytesSource');

  @override
  Future<StreamAudioResponse> request([int? start, int? end]) async {
    // Returning the stream audio response with the parameters
    return StreamAudioResponse(
      sourceLength: _buffer.length,
      contentLength: (end ?? _buffer.length) - (start ?? 0),
      offset: start ?? 0,
      stream: Stream.fromIterable([_buffer.sublist(start ?? 0, end)]),
      contentType: _call.audioType,
    );
  }
}
*/