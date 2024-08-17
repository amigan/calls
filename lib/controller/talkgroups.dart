import 'dart:async';
import 'stillbox_none.dart'
    if (dart.library.io) 'stillbox_io.dart'
    if (dart.library.html) 'stillbox_web.dart';

import '../pb/stillbox.pb.dart';

class TalkgroupCache {
  Socketer socketer;
  final StreamController<TalkgroupInfo> tgiSt =
      StreamController<TalkgroupInfo>.broadcast();
  Map<Talkgroup, TalkgroupInfo> cache = {};

  TalkgroupCache(this.socketer);

  void handleTgInfo(TalkgroupInfo tgi) {
    cache[tgi.tg] = tgi;
    tgiSt.add(tgi);
  }

  Future<TalkgroupInfo> getTg(int system, int tgid) async {
    final tg = Talkgroup(system: system, talkgroup: tgid);
    if (cache[tg] != null) {
      return cache[tg]!;
    }

    socketer.channel.sink.add(Command(tgCommand: tg).writeToBuffer());
    return tgiSt.stream
        .firstWhere((td) => td.tg.system == system && td.tg.talkgroup == tgid);
  }
}
