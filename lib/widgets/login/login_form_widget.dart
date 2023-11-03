import 'package:flutter/material.dart';

import 'login_input_matricula_widget.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final TextEditingController _matriculaController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  Future<void> _onPressed() async {
    if (_formKey.currentState!.validate()) {
      print('formulario válido');
      setState(() {
        _isLoading = true;
      });
      await Future<void>.delayed(const Duration(seconds: 3));
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _matriculaController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            LoginInputMatriculaWidget(controller: _matriculaController),
            // const Text('Password'),
            TextFormField(
              controller: _passwordController,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key),
                label: Text('Password'),
              ),
              obscureText: true,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Password es obligatorio';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              child: !_isLoading
                  ? SizedBox(
                      key: UniqueKey(),
                      child: ElevatedButton(
                        onPressed: _onPressed,
                        child: const Text('Iniciar Sesión'),
                      ),
                    )
                  : SizedBox(
                      key: UniqueKey(),
                      child: const CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
