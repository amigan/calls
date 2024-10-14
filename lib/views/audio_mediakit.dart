import 'package:just_audio/just_audio.dart' as justaudio;
import 'package:just_audio_media_kit/just_audio_media_kit.dart';

class AudioInitializer {
  late justaudio.AudioPlayer player;

  void audioInit() {
    JustAudioMediaKit.ensureInitialized();
    player = justaudio.AudioPlayer();
  }
}
