import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputPS extends StatefulWidget {
  final String hintText;
  const InputPS({super.key, required this.hintText});

  @override
  State<InputPS> createState() => _InputPSState(hintText: '');
}

class _InputPSState extends State<InputPS> {
  bool isPasswordVisible = false;
  final String hintText;

  _InputPSState({required this.hintText});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Row(
      children: [
        Expanded(
          child: TextField(
            obscureText: !isPasswordVisible,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Create your password",
              hintStyle: TextStyle(
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.7857142857 * ffem / fem,
                color: const Color(0x66303030),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
          child: SizedBox(
            width: 22.13 * fem,
            height: 22 * fem,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  isPasswordVisible
                      ? 'assets/vectors/eye.svg'
                      : 'assets/vectors/eye_off.svg',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
