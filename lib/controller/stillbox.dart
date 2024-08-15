import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../pb/stillbox.pb.dart';
import 'play.dart';
import 'stillbox_none.dart'
    if (dart.library.io) 'stillbox_io.dart'
    if (dart.library.html) 'stillbox_web.dart';

class BadAuthException implements Exception {}

class Stillbox extends ChangeNotifier {
  final storage = Storer();
  Player player = Player();
  final channel = Socketer();
  bool connected = false;
  late Uri _wsUri;
  LiveState _state = LiveState.LS_LIVE;
  Filter? currentFilter;
  Call? _currentCall;
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
    channel.connect(_wsUri);
    channel.stream.listen((event) => _handleData(event), onDone: () {
      connected = false;
    }, onError: (error) {
      print(error);
    });
    connected = true;
    notifyListeners();
  }

  Future<void> getBearer() async {
    String? storedToken = await storage.getKey('token');
    late String? storedUri;
    storedUri = await storage.getKey('baseURL');
    if (storedToken == null || storedUri == null) {
      throw (BadAuthException);
    }
    channel.setCookie(storedToken);
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
