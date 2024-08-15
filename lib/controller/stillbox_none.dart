import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as http;

class Storer {
  Future<String?> getKey(String key) async {
    return null;
  }

  void setKey(String key, String value) {
    return;
  }
}

class Socketer {
  late WebSocketChannel channel;

  WebSocketSink get sink {
    return channel.sink;
  }

  Stream<dynamic> get stream {
    return channel.stream;
  }

  String? updateCookie(http.Response response) {
    return null;
  }

  void setCookie(String token) {}

  void connect(Uri uri) {
    channel = WebSocketChannel.connect(uri);
  }
}
