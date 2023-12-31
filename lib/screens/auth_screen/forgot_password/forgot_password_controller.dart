import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/screens/auth_screen/forgot_password/forgot_password_1.dart';
import 'package:task_management/screens/auth_screen/forgot_password/forgot_password_2.dart';
import 'package:task_management/screens/auth_screen/forgot_password/forgot_password_3.dart';

class ForgotPasswordController extends StatefulWidget {
  const ForgotPasswordController({super.key, required this.setForgotState});

  final Function(bool) setForgotState;

  @override
  State<ForgotPasswordController> createState() =>
      _ForgotPasswordControllerState();
}

class _ForgotPasswordControllerState extends State<ForgotPasswordController> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor50,
      body: Center(
        child: Container(
          height: 350,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            children: <Widget>[
              ForgotPassword1(
                setForgotState: widget.setForgotState,
                controller: _controller,
                textController: TextEditingController(),
              ),
              ForgotPassword2(
                setForgotState: widget.setForgotState,
                controller: _controller,
                textController: TextEditingController(),
              ),
              ForgotPassword3(
                setForgotState: widget.setForgotState,
                textController: TextEditingController(),
                updatePassword: _updatePassword,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _updatePassword() async {
    
  }
}
