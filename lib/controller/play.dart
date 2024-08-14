import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import '../pb/stillbox.pb.dart';

class Player {
  final player = AudioPlayer();
  Player();
  Future<void> play(Call call) {
    return player.play(BytesSource(Uint8List.fromList(call.audio)));
  }
}
