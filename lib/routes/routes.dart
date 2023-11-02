import 'package:get/get.dart';

import '../screens/login_screen.dart';
import '../screens/onboarding_screen.dart';
import 'routes_name.dart';

class GetPages {
  List<GetPage<dynamic>> getPages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: nameOnboardingScreen,
      page: () => const OnboardingScreen(),
    ),
    GetPage<dynamic>(
      name: nameLoginScreen,
      page: () => const LoginScreen(),
    ),
  ];
}
