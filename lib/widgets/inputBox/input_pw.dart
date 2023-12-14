import 'package:flutter/material.dart';
import 'package:task_management/widgets/inputBox/on_offPs.dart';

class InputPW extends StatefulWidget {
  final String hintText;

  const InputPW(
      {Key? key,
      required this.hintText,
      required TextEditingController controller})
      : super(key: key);

  @override
  _InputPWState createState() => _InputPWState();
}

class _InputPWState extends State<InputPW> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      padding: EdgeInsets.fromLTRB(10 * fem, 2 * fem, 7 * fem, 2 * fem),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(10 * fem),
        boxShadow: [
          BoxShadow(
            color: const Color(0x19929292),
            offset: Offset(0 * fem, 10 * fem),
            blurRadius: 37.5 * fem,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
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
      ),
    );
  }
}
