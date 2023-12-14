import 'package:flutter/material.dart';

import '../../widgets/inputBox/input_pw.dart';

class ForgotPassword3 extends StatefulWidget {
  const ForgotPassword3({super.key});

  @override
  State<ForgotPassword3> createState() => _ForgotPassword3State();
}

class _ForgotPassword3State extends State<ForgotPassword3> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _checkNewPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SizedBox(
      width: 400 * fem,
      height: 243 * fem,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 325 * fem,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // passwordj7T (1:2134)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 20 * fem),
                  child: Text(
                    'New Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff303030),
                    ),
                  ),
                ),
                Container(
                  // group903P3 (1:2135)
                  padding:
                      EdgeInsets.fromLTRB(20 * fem, 5 * fem, 26 * fem, 5 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xfff8f8f8),
                    borderRadius: BorderRadius.circular(10 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x19929292),
                        offset: Offset(0 * fem, 10 * fem),
                        blurRadius: 37.5 * fem,
                      ),
                    ],
                  ),
                  child: InputPW(
                    hintText: 'Enter your new password',
                    controller: _newPasswordController,
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7.13 * fem),
          //   child: Text(
          //     'New Password',
          //     style: TextStyle(
          //       fontFamily: 'Poppins',
          //       fontSize: 15 * ffem,
          //       fontWeight: FontWeight.w600,
          //       height: 1.5 * ffem / fem,
          //       color: const Color(0xcc212121),
          //     ),
          //   ),
          // ),
          SizedBox(
            width: 285.11 * fem,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0.19 * fem, 12 * fem, 0 * fem, 20.37 * fem),
                  child: Text(
                    'Repeat Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff303030),
                    ),
                  ),
                ),
                Container(
                  // group100jFB (1:2167)
                  padding: EdgeInsets.fromLTRB(
                      23.69 * fem, 5 * fem, 23.08 * fem, 5 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xfff8f8f8),
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: InputPW(
                    hintText: 'Enter your new password',
                    controller: _checkNewPasswordController,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
