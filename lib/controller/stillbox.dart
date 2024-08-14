import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../pb/stillbox.pb.dart';
import 'play.dart';

class BadAuthException implements Exception {}

class Stillbox extends ChangeNotifier {
  final storage = FlutterSecureStorage();
  Player player = Player();
  late IOWebSocketChannel channel;
  bool connected = false;
  late Uri _wsUri;
  LiveState _state = LiveState.LS_LIVE;
  Filter? currentFilter;
  Call? _currentCall;
  Map<String, String> headers = {};

  set state(LiveState newState) {
    channel.sink.add(Live(state: newState, filter: currentFilter));
    _state = newState;
    notifyListeners();
  }

  LiveState get state {
    return _state;
  }

  Call? get currentCall => _currentCall;
  set currentCall(Call? call) {
    _currentCall = call;
    notifyListeners();
  }

  Stillbox() {
    String socketUrl = 'ws://xenon:3050/ws';
    Uri baseUri = Uri.base;
    if (baseUri.scheme == 'http' || baseUri.scheme == 'https') {
      final port = (baseUri.hasPort ? ':${baseUri.port}' : '');
      socketUrl =
          '${baseUri.scheme == 'http' ? 'ws' : 'wss'}://${baseUri.host}$port/ws';
    }
    _wsUri = Uri.parse(socketUrl);
  }

  Future<void> connect() async {
    await setBearer();
    channel = IOWebSocketChannel.connect(_wsUri, headers: headers);
    channel.stream.listen((event) => _handleData(event), onDone: () {
      connected = false;
    }, onError: (error) {
      print(error);
    });
    connected = true;
    notifyListeners();
  }

  Future<void> setBearer() async {
    String? storedToken = await storage.read(key: 'token');
    if (storedToken == null) {
      throw (BadAuthException);
    }
  }

  void _handleData(dynamic event) {
    final msg = Message.fromBuffer(event);
    switch (msg.whichToClientMessage()) {
      case Message_ToClientMessage.call:
        player.play(msg.call);
      case Message_ToClientMessage.notification:
      case Message_ToClientMessage.popup:
      case Message_ToClientMessage.error:
      default:
    }
  }
}
