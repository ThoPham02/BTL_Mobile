// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/screens/login_signup/forgot_password/forgot_password.dart';
import 'package:task_management/screens/login_signup/input_ps/Input_ps.dart';
import 'package:task_management/services/firebase_auth_service.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? onTap;

  const LoginScreen({super.key, this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final ValueNotifier<bool> isPasswordVisibleNotifier =
      ValueNotifier<bool>(false);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xfffafafa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0.08 * fem, 0 * fem, 0 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 42 * fem),
                      padding: EdgeInsets.fromLTRB(
                          34.98 * fem, 17.33 * fem, 14.67 * fem, 14.8 * fem),
                      width: double.infinity,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          2 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Tasky .',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 26 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.4249999707 * ffem / fem,
                          color: const Color(0xfff26950),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 61 * fem, 0 * fem, 0 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                65 * fem, 0 * fem, 58 * fem, 14 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 120 * fem, 1 * fem),
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625 * ffem / fem,
                                      color: const Color(0xff303030),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: widget.onTap,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625 * ffem / fem,
                                        color: const Color(0x7f303030),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // dividerhGH (1:1573)
                            width: 188 * fem,
                            height: 3 * fem,
                            child: Image.asset(
                              'assets/images/divider.png',
                              width: 188 * fem,
                              height: 3 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    25 * fem, 44.5 * fem, 25 * fem, 9 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 24.53 * fem),
                      width: double.infinity,
                      height: 97.5 * fem,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 19.5 * fem),
                              child: Text(
                                'Username or E-mail',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625 * ffem / fem,
                                  color: const Color(0xff303030),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 5 * fem, 7 * fem, 8 * fem),
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
                              child: TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter your username or E-mail",
                                  hintStyle: TextStyle(
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.7857142857 * ffem / fem,
                                    color: const Color(0x66303030),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 42 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // passwordSTX (1:2198)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 20 * fem),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xff303030),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                10 * fem, 5 * fem, 7 * fem, 8 * fem),
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
                            child: InputPS(
                              hintText: 'Enter your password',
                              controller: _passwordController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const ForgotPassword(),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 23.47 * fem),
                      width: double.infinity,
                      height: 57 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xfff26950),
                        borderRadius: BorderRadius.circular(15 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x26f26950),
                            offset: Offset(0 * fem, 6 * fem),
                            blurRadius: 25 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: _loginHandle,
                          child: Text(
                            'Login',
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
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 19, top: 23.47),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              indent: 96,
                              endIndent: 14,
                              thickness: 1.0, // Độ dày của đường gạch
                              color: Color(0x3030301A), // Màu của đường gạch
                            ),
                          ),
                          Text('Or login with'),
                          Expanded(
                            child: Divider(
                              indent: 14,
                              endIndent: 96,
                              thickness: 1.0, // Độ dày của đường gạch
                              color: Color(0x3030301A), // Màu của đường gạch
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          55 * fem, 0 * fem, 55 * fem, 20 * fem),
                      width: double.infinity,
                      height: 50 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group94UvZ (1:1601)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 34.5 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                12.5 * fem, 12.5 * fem, 12.5 * fem, 12.5 * fem),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(35 * fem),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x07a5a5a5),
                                  offset: Offset(0 * fem, 4 * fem),
                                  blurRadius: 5 * fem,
                                ),
                              ],
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 25 * fem,
                                height: 25 * fem,
                                child: SvgPicture.asset(
                                  "assets/vectors/google_icon.svg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // group95Ht1 (1:1596)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 30.5 * fem, 0 * fem),
                            width: 50 * fem,
                            height: 50 * fem,
                            child: SvgPicture.asset(
                              "assets/vectors/person.svg",
                              width: 50 * fem,
                              height: 50 * fem,
                            ),
                          ),
                          SizedBox(
                            // group96bth (1:1604)
                            width: 50 * fem,
                            height: 50 * fem,
                            child: SvgPicture.asset(
                              "assets/vectors/facebook_icon.svg",
                              width: 50 * fem,
                              height: 50 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   // rectangle2499X (1:1548)
                    //   margin: EdgeInsets.fromLTRB(
                    //       96 * fem, 0 * fem, 95 * fem, 0 * fem),
                    //   width: double.infinity,
                    //   height: 5 * fem,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(100 * fem),
                    //     color: const Color(0xff000000),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _loginHandle() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signIn(email, password);

    if (user != null) {
      print(user.uid);
      Navigator.pushNamed(context, "/mainhome");
    }
  }
}
