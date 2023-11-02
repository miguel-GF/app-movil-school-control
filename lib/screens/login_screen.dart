import 'package:flutter/material.dart';

import '../themes/colors_dev.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Soy login screen',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: colorErrorOscuro,
              ),
        ),
      ),
    );
  }
}
