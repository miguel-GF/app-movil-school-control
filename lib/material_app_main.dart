import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_config.dart';
import 'constants.dart';
import 'screens/onboarding_screen.dart';
// import 'screens/test_screen.dart';
import 'themes/ipes_theme_pro.dart';
import 'themes/theme_dev.dart';

class MaterialAppMain extends StatelessWidget {
  const MaterialAppMain({super.key, required this.appConfig});
  final AppConfig appConfig;

  ThemeData getLightTheme() {
    if (appConfig.flavor == productionModeIpes) {
      return ipesLightTheme;
    }
    return devLightTheme;
  }

  ThemeData getDarkTheme() {
    if (appConfig.flavor == productionModeIpes) {
      return ipesDarkTheme;
    }
    return devDarkTheme;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      home: const OnboardingScreen(),
    );
  }
}
