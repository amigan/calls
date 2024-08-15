import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Storer {
  final storage = const FlutterSecureStorage();
  Future<String?> getKey(String key) async {
    return await storage.read(key: 'token');
  }

  void setKey(String key, String value) async {
    await storage.write(key: 'token', value: value);
  }
}
