import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:get/get.dart';

import '../helpers/asset_helper.dart';
import '../routes/routes_name.dart';
import '../widgets/onboarding/onboarding_image_widget.dart';
import '../widgets/onboarding/onboarding_text_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  void _onFinish() {
    Get.offAllNamed(nameLoginScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnBoardingSlider(
          headerBackgroundColor: Colors.white,
          finishButtonText: 'Iniciar sesión',
          finishButtonStyle: const FinishButtonStyle(
            backgroundColor: Colors.black,
          ),
          onFinish: _onFinish,
          skipTextButton: const Text('Skip'),
          trailing: const Text('Iniciar sesión'),
          background: <Widget>[
            OnboardingImageWidget(assetUrl: AssetHelper.defaultOnboarding),
            OnboardingImageWidget(assetUrl: AssetHelper.defaultOnboarding),
            OnboardingImageWidget(assetUrl: AssetHelper.defaultOnboarding),
          ],
          totalPage: 3,
          speed: 0.8,
          pageBodies: const <Widget>[
            OnboardingTextWidget(
              titulo: 'Calificaciones',
              descripcion: 'Ten tu desempeño académico a la mano',
            ),
            OnboardingTextWidget(
              titulo: 'Historial',
              descripcion: 'Visualiza tu historial de pagos',
            ),
            OnboardingTextWidget(
              titulo: 'Pagos',
              descripcion: 'Paga fácilmente tus recursos',
              ultimaPagina: true,
            ),
          ],
        ),
      ),
    );
  }
}
