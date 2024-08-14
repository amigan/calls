import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../pb/stillbox.pb.dart';
import 'play.dart';

class BadAuthException implements Exception {}

class Stillbox extends ChangeNotifier {
  final storage = const FlutterSecureStorage();
  Player player = Player();
  late IOWebSocketChannel channel;
  bool connected = false;
  late Uri _wsUri;
  LiveState _state = LiveState.LS_LIVE;
  Filter? currentFilter;
  Call? _currentCall;
  Map<String, String> headers = {};
  Uri? baseUri = Uri.base;

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

  void updateCookie(http.Response response) {
    String? rawCookie = response.headers['set-cookie'];
    if (rawCookie != null) {
      int index = rawCookie.indexOf(';');
      headers['cookie'] =
          (index == -1) ? rawCookie : rawCookie.substring(0, index);
    }
  }

  Future<bool> doLogin(String uri, String username, String password) async {
    if (baseUri == null) {
      baseUri = Uri.parse(uri);
      setUris();
    }
    Uri loginUri = Uri.parse('${baseUri!}/login');
    final form = <String, dynamic>{};
    form['username'] = username;
    form['password'] = password;
    http.Response response = await http.post(
      loginUri,
      body: form,
    );
    if (response.statusCode == 200) {
      updateCookie(response);
      await storage.write(key: 'token', value: headers['cookie']);
      await storage.write(key: 'baseURL', value: uri);
      await connect();
      return true;
    }
    return false;
  }

  Future<void> connect() async {
    if (connected == true) {
      return;
    }
    channel = IOWebSocketChannel.connect(_wsUri, headers: headers);
    channel.stream.listen((event) => _handleData(event), onDone: () {
      connected = false;
    }, onError: (error) {
      print(error);
    });
    connected = true;
    notifyListeners();
  }

  Future<void> getBearer() async {
    String? storedToken = await storage.read(key: 'token');
    String? storedUri = await storage.read(key: 'baseURL');
    if (storedToken == null || storedUri == null) {
      throw (BadAuthException);
    }
    headers['cookie'] = storedToken;
    baseUri = Uri.parse(storedUri);
    setUris();
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
