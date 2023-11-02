import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingImageWidget extends StatelessWidget {
  const OnboardingImageWidget({super.key, required this.assetUrl});
  final String assetUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * 1.5 / 3,
      child: Image.asset(
        assetUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
