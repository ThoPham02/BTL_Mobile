import 'package:flutter/material.dart';
import 'package:task_management/screens/auth_screen/forgot_password/forgot_password_controller.dart';
import 'package:task_management/screens/auth_screen/login_screen.dart';
import 'package:task_management/screens/auth_screen/signup_screen.dart';

class AuthController extends StatefulWidget {
  const AuthController({super.key});

  @override
  State<AuthController> createState() => _AuthControllerState();
}

class _AuthControllerState extends State<AuthController> {
  final PageController _controller = PageController();
  bool _forgotPassword = false;

  _setForgotPassword(bool input) {
    setState(() {
      _forgotPassword = input;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: <Widget>[
                LoginScreen(
                  controller: _controller,
                  setForgotState: _setForgotPassword
                ),
                SignUpScreen(controller: _controller),
              ],
            ),
            _forgotPassword
                ? const ForgotPasswordController()
                : const SizedBox(width: 0, height: 0),
          ],
        ));
  }
}
