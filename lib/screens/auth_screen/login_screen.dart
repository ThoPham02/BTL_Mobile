// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/screens/auth_screen/widgets/auth_header.dart';
import 'package:task_management/screens/auth_screen/widgets/input.dart';
import 'package:task_management/services/firebase_auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen(
      {super.key, required this.controller, required this.setForgotState});

  final PageController controller;
  final Function(bool) setForgotState;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuthService _authService = FirebaseAuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor5,
      body: ListView(
        children: [
          AuthHeader(
            indexPage: 0,
            controller: widget.controller,
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
          Container(
            margin: const EdgeInsets.fromLTRB(25, 30, 25, 30),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                widget.setForgotState(true);
              },
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: fontWeightRegular,
                  fontFamily: "Nunito Sans",
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: _signInHandle,
            child: Container(
              height: 57,
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Login",
                style: TextStyle(
                  fontFamily: "Nunito Sans",
                  fontSize: 18,
                  fontWeight: fontWeightRegular,
                  color: whiteColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 50,
                color: blackColor50,
              ),
              const Text("Or login with"),
              Container(
                height: 1,
                width: 50,
                color: blackColor50,
              )
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              width: 215,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: whiteColor,
                    ),
                    child: SvgPicture.asset("assets/vectors/google_icon.svg"),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: redColor20,
                    ),
                    child: SvgPicture.asset("assets/vectors/user.svg"),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: blueColor,
                    ),
                    child: SvgPicture.asset("assets/vectors/logo_facebook.svg"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  bool _validateEmail(String email) {
    return email.contains('@') && email.contains('.');
  }

  _signInHandle() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Kiểm tra email hợp lệ trước khi thực hiện đăng nhập
    if (!_validateEmail(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Vui lòng sử dụng Email để đăng nhập')),
      );
      return;
    }

    UserEntity? user = await _authService.signIn(email, password);
    // print(email);
    // print(password);

    if (user != null) {
      print("Login success!!");
      Navigator.pushNamed(context, "main", arguments: (user));
    } else {
      print("Login Wrong!!");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text("Đăng nhập không thành công. Vui lòng thử lại")),
      );
    }
  }
}
