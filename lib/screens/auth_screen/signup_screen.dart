// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/screens/auth_screen/widgets/auth_header.dart';
import 'package:task_management/screens/auth_screen/widgets/input.dart';
import 'package:task_management/services/firebase_auth_service.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FirebaseAuthService _authService = FirebaseAuthService();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor5,
      body: ListView(
        children: [
          AuthHeader(
            indexPage: 1,
            controller: widget.controller,
          ),
          Input(
            textController: _usernameController,
            title: "Username",
            hintText: "Enter your Username",
          ),
          Input(
            textController: _emailController,
            title: "E-mail",
            hintText: "Enter your E-mail",
          ),
          Input(
            textController: _passwordController,
            title: "Password",
            hintText: "Enter your password",
            typePassword: true,
          ),
          const SizedBox(height: 35),
          TextButton(
            onPressed: _signUpHandle,
            child: Container(
              height: 57,
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontFamily: "Nunito Sans",
                  fontSize: 18,
                  fontWeight: fontWeightRegular,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _signUpHandle() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String username = _usernameController.text;

    UserEntity? user = await _authService.signUp(username, email, password);
    if (user != null) {
      print("Sign Up success!!");
      Navigator.pushNamed(context, "main", arguments: (user));
    } else {
      print("Sign Up Wrong!!");
    }
  }
}
