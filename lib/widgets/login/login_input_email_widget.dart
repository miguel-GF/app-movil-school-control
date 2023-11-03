import 'package:flutter/material.dart';

class LoginInputEmailWidget extends StatefulWidget {
  const LoginInputEmailWidget({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<LoginInputEmailWidget> createState() => _LoginInputEmailWidgetState();
}

class _LoginInputEmailWidgetState extends State<LoginInputEmailWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // const Text('Email'),
        TextFormField(
          controller: widget.controller,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email),
            label: Text('Email'),
          ),
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'Email es obligatorio';
            }
            return null;
          },
        ),
      ],
    );
  }
}
