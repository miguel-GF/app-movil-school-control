import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../config/environment.dart';
import 'app_config.dart';
import 'material_app_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AppConfig appConfig =
      AppConfig(appName: 'IPES DEV', flavor: 'ipes_dev');
  await Environment().loadEnvironment(flavor: 'ipes_dev');
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(MyApp(
    appConfig: appConfig,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appConfig});
  final AppConfig appConfig;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialAppMain(
      appConfig: appConfig,
    );
  }
}
