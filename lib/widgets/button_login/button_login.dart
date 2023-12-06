import 'dart:js';

import 'package:flutter/material.dart';

double baseWidth = 375;
double fem = MediaQuery.of(context as BuildContext).size.width / baseWidth;
double ffem = fem * 0.97;

// TextField reusableTextField(String hintText, IconData icon, bool isPasswordType,
//     TextEditingController controller) {
//   return TextField(
//     controller: controller,
//     obscureText: isPasswordType,
//     enableSuggestions: !isPasswordType,
//     autocorrect: !isPasswordType,
//     cursorColor: Colors.black,
//     style: TextStyle(color: Colors.white.withOpacity(0.9)),
//     decoration: InputDecoration(
//       prefixIcon: Icon(
//         icon,
//         color: Colors.white70,
//       ),
//       hintText: hintText,
//       hintStyle: TextStyle(
//         fontSize: 14 * ffem,
//         fontWeight: FontWeight.w400,
//         height: 1.7857142857 * ffem / fem,
//         color: const Color(0x66303030),
//       ),
//       filled: true,
//       floatingLabelBehavior: FloatingLabelBehavior.never,
//       fillColor: Colors.white.withOpacity(0.3),
//       border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30.0),
//           borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
//     ),
//     keyboardType: isPasswordType
//         ? TextInputType.visiblePassword
//         : TextInputType.emailAddress,
//   );
// }

Container signInSignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
  double baseWidth = 375;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;

  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 23.47 * fem),
    width: double.infinity,
    height: 57 * fem,
    decoration: BoxDecoration(
      color: const Color(0xfff26950),
      borderRadius: BorderRadius.circular(30 * fem),
      boxShadow: [
        BoxShadow(
          color: const Color(0x26f26950),
          offset: Offset(0 * fem, 6 * fem),
          blurRadius: 25 * fem,
        ),
      ],
    ),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xfff26950),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15 * fem), // Độ bo góc
          side: const BorderSide(
            color: Color(0xfff26950),
          ), // Màu và độ rộng của border
        ),
      ),
      child: Text(
        isLogin ? 'Log In' : 'Sign Up',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Nunito Sans',
          fontSize: 18 * ffem,
          fontWeight: FontWeight.w700,
          height: 1.3625 * ffem / fem,
          color: const Color(0xffffffff),
        ),
      ),
    ),
  );
}
