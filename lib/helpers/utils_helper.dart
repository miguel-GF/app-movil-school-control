import '../config/environment.dart';

class UtilsHelper {
  String getAppTitle() {
    try {
      final String appMode = Environment().appMode;
      return appMode.split('_').first;
    } catch (e) {
      rethrow;
    }
  }
}
