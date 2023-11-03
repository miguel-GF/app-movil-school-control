import '../config/environment.dart';

class AssetsHelper {
  static String defaultOnboarding = 'assets/images/defaultonboarding.png';

  String getLogo() {
    String logo = '';
    final String appMode = Environment().appMode;
    switch (appMode) {
      case 'dev':
        logo = 'assets/dev/logo.png';
        break;

      case 'ipes_pro':
        logo = 'assets/ipes/logo.png';
        break;

      default:
        logo = 'assets/dev/logo.png';
        break;
    }

    return logo;
  }
}
