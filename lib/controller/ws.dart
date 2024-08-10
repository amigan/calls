import 'package:web_socket_channel/web_socket_channel.dart';
import '../pb/stillbox.pb.dart';

class LiveFeeder {
  late Uri _wsUri;
  late WebSocketChannel channel;

  LiveFeeder();

  void init() {
    String socketUrl = 'ws://xenon:3050/ws';
    Uri baseUri = Uri.base;
    if (baseUri.scheme == 'http' || baseUri.scheme == 'https') {
      String port = (baseUri.hasPort ? ':' + baseUri.port.toString() : '');
      socketUrl = 'ws://${baseUri.host}$port/ws';
    }
    _wsUri = Uri.parse(socketUrl);
  }

  void connect() {
    channel = WebSocketChannel.connect(_wsUri);
    channel.stream.listen((event) => _handleData(event));
  }

  void _handleData(dynamic event) {
    final msg = Message.fromBuffer(event);
    switch (msg.whichToClientMessage()) {
      case Message_ToClientMessage.call:
      case Message_ToClientMessage.notification:
      case Message_ToClientMessage.popup:
      case Message_ToClientMessage.error:
      default:
    }
  }
}
