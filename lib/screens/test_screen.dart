import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool isDarkTheme = false;

  void _onPressed() {
    print('cambiar tema');
    Get.changeThemeMode(Get.isDarkMode? ThemeMode.light: ThemeMode.dark);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Hola mundo',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          TextButton(
            onPressed: _onPressed,
            child: const Text('Cambiar tema'),
          ),
        ],
      ),
    );
  }
}
