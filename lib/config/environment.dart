import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Environment {
  factory Environment() {
    return _instance;
  }

  Environment._internal();
  late String appMode;
  late String apiKey;
  late String apiUrl;
  late String baseUrl;

  static final Environment _instance = Environment._internal();

  Future<void> loadEnvironment({required String flavor}) async {
    try {
      final String data = await rootBundle.loadString('lib/config/env_$flavor.json');
      final Map<String, dynamic> jsonMap = jsonDecode(data);

      appMode = jsonMap['APP_MODE'];
      apiKey = jsonMap['API_KEY'];
      apiUrl = jsonMap['API_URL'];
      baseUrl = jsonMap['BASE_URL'];
    } catch (e) {
      print('error -> $e');
    }
  }
}
