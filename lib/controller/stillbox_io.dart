import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as http;

class Storer {
  final storage = const FlutterSecureStorage();
  Future<String?> getKey(String key) async {
    return await storage.read(key: key);
  }

  void setKey(String key, String value) async {
    await storage.write(key: key, value: value);
  }
}

class Socketer {
  late IOWebSocketChannel channel;
  Map<String, String> headers = {};

  WebSocketSink get sink {
    return channel.sink;
  }

  Stream<dynamic> get stream {
    return channel.stream;
  }

  String? updateCookie(http.Response response) {
    String? rawCookie = response.headers['set-cookie'];
    if (rawCookie != null) {
      int index = rawCookie.indexOf(';');
      headers['cookie'] =
          (index == -1) ? rawCookie : rawCookie.substring(0, index);
    }

    return headers['cookie'];
  }

  void setCookie(String token) {
    headers['cookie'] = token;
  }

  void connect(Uri uri) {
    channel = IOWebSocketChannel.connect(uri, headers: headers);
  }
}
