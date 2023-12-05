import 'package:flutter/material.dart';
import 'package:task_management/screens/login_signup/input_ps/on_offPs.dart';

class InputPS extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const InputPS({Key? key, required this.hintText, required this.controller})
      : super(key: key);

  @override
  _InputPSState createState() => _InputPSState();
}

class _InputPSState extends State<InputPS> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: widget.controller,
            obscureText: !isPasswordVisible,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.7857142857 * ffem / fem,
                color: const Color(0x66303030),
              ),
            ),
          ),
        ),
        HiddenPs(
          onVisibilityChanged: (isVisible) {
            setState(() {
              isPasswordVisible = isVisible;
            });
          },
        ),
      ],
    );
  }
}
