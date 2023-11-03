import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingTextWidget extends StatelessWidget {
  const OnboardingTextWidget({
    super.key,
    required this.titulo,
    required this.descripcion,
    this.ultimaPagina = false,
  });
  final String titulo;
  final String descripcion;
  final bool ultimaPagina;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: !ultimaPagina ? Get.height * 0.4 : Get.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                const SizedBox(height: 30),
                Text(
                  descripcion,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
