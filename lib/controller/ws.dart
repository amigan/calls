import 'package:web_socket_channel/web_socket_channel.dart';

class LiveFeeder {
  late WebSocketChannel channel;

  LiveFeeder();

  void init() {
    String socketUrl = 'ws://xenon:3050/ws';
    Uri baseUri = Uri.base;
    if (baseUri.scheme == 'http' || baseUri.scheme == 'https') {
      String port = (baseUri.hasPort ? ':' + baseUri.port.toString() : '');
      socketUrl = 'ws://${baseUri.host}$port/ws';
    }
    final wsUri = Uri.parse(socketUrl);

    channel = WebSocketChannel.connect(wsUri);
    channel.stream.listen((event) => _handleData(event));
  }

  void _handleData(dynamic event) {
    print(event);
  }
}
