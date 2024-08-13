import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import '../pb/stillbox.pb.dart';

class Client extends ChangeNotifier {
  late Uri _wsUri;
  late IOWebSocketChannel channel;

  Client() {
    String socketUrl = 'ws://xenon:3050/ws';
    Uri baseUri = Uri.base;
    if (baseUri.scheme == 'http' || baseUri.scheme == 'https') {
      final port = (baseUri.hasPort ? ':${baseUri.port}' : '');
      socketUrl =
          '${baseUri.scheme == 'http' ? 'ws' : 'wss'}://${baseUri.host}$port/ws';
    }
    _wsUri = Uri.parse(socketUrl);
  }

  bool isConnected() {
    return false;
  }

  void connect() {
    channel = IOWebSocketChannel.connect(_wsUri);
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
