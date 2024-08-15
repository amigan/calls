import 'dart:html';

class Storer {
  Future<String?> getKey(String key) async {
    return window.localStorage[key];
  }

  void setKey(String key, String value) {
    window.localStorage[key] = value;
  }
}
