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
