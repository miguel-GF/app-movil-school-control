import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/assets_helper.dart';
import '../helpers/utils_helper.dart';
import '../widgets/login/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: Theme.of(context).colorScheme.primary,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    AssetsHelper().getLogo(),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  UtilsHelper().getAppTitle(),
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: Get.height * 0.5,
                  width: Get.width * 0.7,
                  child: const Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: LoginFormWidget()
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
