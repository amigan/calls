import 'package:just_audio/just_audio.dart' as justaudio;

class AudioInitializer {
  late justaudio.AudioPlayer player;

  void audioInit() {
    player = justaudio.AudioPlayer();
  }
}
