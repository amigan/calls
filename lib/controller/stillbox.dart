import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../pb/stillbox.pb.dart';
import 'stillbox_none.dart'
    if (dart.library.io) 'stillbox_io.dart'
    if (dart.library.html) 'stillbox_web.dart';

import 'talkgroups.dart';

class BadAuthException implements Exception {}

class Stillbox extends ChangeNotifier {
  final storage = Storer();
  final channel = Socketer();
  late TalkgroupCache tgCache;
  bool connected = false;
  late Uri _wsUri;
  LiveState _state = LiveState.LS_LIVE;
  Filter? currentFilter;
  SBCall? _currentCall;
  Uri? baseUri = Uri.base;
  int queueLen = 0;
  final StreamController<SBCall> callStream = StreamController<SBCall>();
  final StreamController<int> callQStream = StreamController<int>();

  set state(LiveState newState) {
    channel.sink.add(Live(state: newState, filter: currentFilter));
    _state = newState;
    notifyListeners();
  }

  LiveState get state {
    return _state;
  }

  SBCall? get currentCall => _currentCall;

  Stillbox() {
    setUris();
  }

  void setUris() {
    if (baseUri != null &&
        (baseUri!.scheme == 'http' || baseUri!.scheme == 'https')) {
      String socketUrl;
      final port = (baseUri!.hasPort ? ':${baseUri!.port}' : '');
      socketUrl =
          '${baseUri!.scheme == 'http' ? 'ws' : 'wss'}://${baseUri!.host}$port/ws';
      _wsUri = Uri.parse(socketUrl);
    } else {
      baseUri = null;
    }
  }

  Future<bool> doLogin(String uri, String username, String password) async {
    baseUri = Uri.parse(uri);
    setUris();
    String baseUriString = baseUri.toString();
    // trim trailing slash since gordio router really dislikes it
    if (baseUriString.endsWith('/')) {
      baseUriString = baseUriString.substring(0, baseUriString.length - 1);
    }
    Uri loginUri = Uri.parse('$baseUriString/login');
    final form = <String, dynamic>{};
    form['username'] = username;
    form['password'] = password;
    http.Response response = await http.post(
      loginUri,
      body: form,
    );
    if (response.statusCode == 200) {
      String? token = channel.updateCookie(response);
      storage.setKey('baseURL', uri);
      if (!kIsWeb && token != null) {
        storage.setKey('token', token);
      }
      await connect();
      return true;
    }
    return false;
  }

  Future<void> connect() async {
    if (connected == true) {
      return;
    }
    channel.stream.listen((event) => _handleData(event),
        onDone: () {
          connected = false;
        },
        onError: (error) => _handleError(error));
    channel.connect(_wsUri);
    connected = true;
    tgCache = TalkgroupCache(channel);
    notifyListeners();
  }

  Future<void> getBearer() async {
    String? storedToken = await storage.getKey('token');
    late String? storedUri;
    storedUri = await storage.getKey('baseURL');
    if ((!kIsWeb && storedToken == null) || storedUri == null) {
      throw (BadAuthException);
    }
    if (!kIsWeb) {
      channel.setCookie(storedToken!);
    }
    baseUri = Uri.parse(storedUri);
    setUris();
  }

  void dispatchCall(SBCall call) {
    callStream.add(call);
    callQStream.add(1);
  }

  void _handleError(dynamic error) {
    connected = false;
    print(error);
    callStream.addError(error);
  }

  void _handleData(dynamic event) {
    final msg = Message.fromBuffer(event);
    switch (msg.whichToClientMessage()) {
      case Message_ToClientMessage.call:
        dispatchCall(SBCall(
            msg.call, tgCache.getTg(msg.call.system, msg.call.talkgroup)));
      case Message_ToClientMessage.notification:
      case Message_ToClientMessage.popup:
      case Message_ToClientMessage.error:
      case Message_ToClientMessage.tgInfo:
        tgCache.handleTgInfo(msg.tgInfo);
      default:
    }
  }
}

class SBCall {
  Call call;
  Future<TalkgroupInfo> tg;

  SBCall(this.call, this.tg);
}
