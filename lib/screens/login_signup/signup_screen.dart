import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_management/screens/login_signup/input_ps/Input_ps.dart';

import '../../services/firebase_auth_service.dart';

class SignUpScreen extends StatefulWidget {
  final void Function()? onTap;

  const SignUpScreen({super.key, this.onTap});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _checkPasswordController =
      TextEditingController();

  bool isPasswordVisible = false;
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
                          66 * fem, 61 * fem, 0 * fem, 0 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 61 * fem, 14 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: widget.onTap,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 120 * fem, 1 * fem),
                                    child: Text(
                                      'Log In',
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
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625 * ffem / fem,
                                      color: const Color(0xff303030),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // dividerMd7 (1:2187)
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
                          0 * fem, 0 * fem, 0 * fem, 34 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // usernameoremailk9T (1:2212)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 19.5 * fem),
                            child: Text(
                              'Username or E-mail',
                              style: TextStyle(
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xff303030),
                              ),
                            ),
                          ),
                          Container(
                            // group91eVj (1:2209)
                            padding: EdgeInsets.fromLTRB(
                                10 * fem, 5 * fem, 7 * fem, 10 * fem),
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
                    Container(
                      // formemailemptyJ4V (1:2190)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 35 * fem),
                      width: double.infinity,
                      height: 98 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: Container(
                        // group99DhF (1:2191)
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // emailmCy (1:2192)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 10 * fem),
                              child: Text(
                                'E-mail',
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625 * ffem / fem,
                                  color: const Color(0xff303030),
                                ),
                              ),
                            ),
                            Container(
                              // group98gaq (1:2193)
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 5 * fem, 7 * fem, 10 * fem),
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
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter your E-mail",
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
                            // autogroupjgq5WTP (QpdG81B9fbHza9PLbBJgQ5)
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
                              hintText: 'Create your password',
                              controller: _passwordController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // nextbuttonlargeXWu (1:2213)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 62 * fem),
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
                          onPressed: _signUpHandle,
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
                    // Container(
                    //   // rectangle24ZyP (1:2184)
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

  _signUpHandle() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String checkPassword = _checkPasswordController.text;

    if (checkPassword != password) {
      // todo
    }

    User? user = await _auth.signUp(email, password);

    if (user != null) {
      print("user is successfully created");
    } else {
      print("Some error in sign up");
    }
  }
}
