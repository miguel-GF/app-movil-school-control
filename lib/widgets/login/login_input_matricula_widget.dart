import 'package:flutter/material.dart';

class LoginInputMatriculaWidget extends StatefulWidget {
  const LoginInputMatriculaWidget({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<LoginInputMatriculaWidget> createState() =>
      _LoginInputMatriculaWidgetState();
}

class _LoginInputMatriculaWidgetState extends State<LoginInputMatriculaWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // const Text('Matricula'),
        TextFormField(
          controller: widget.controller,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person),
            label: Text('Matricula'),
          ),
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'Matricula es obligatoria';
            }
            return null;
          },
        ),
      ],
    );
  }
}
