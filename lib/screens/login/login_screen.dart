import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/screens/forgotPassword/forgotPassword.dart';
import 'package:task_management/screens/login/inputBox/input_pw.dart';
import 'package:task_management/screens/login/inputBox/input_text.dart';
import 'package:task_management/widgets/button_login/button_login.dart';
import '../mainhome/mainhome_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final void Function()? onTap;

  LoginScreen({super.key, required this.onTap});

  final ValueNotifier<bool> isPasswordVisibleNotifier =
      ValueNotifier<bool>(false);

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
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          2 * fem, 72 * fem, 0 * fem, 0 * fem),
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
                                  onTap: onTap,
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
                            InputText(
                              hintText: 'Enter your username or E-mail',
                              controller: emailController,
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
                          InputPW(
                            hintText: 'Enter your password',
                            controller: passwordController,
                          ),
                        ],
                      ),
                    ),
                    const ForgotPassword(),
                    signInSignUpButton(context, true, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainhomeScreen()),
                      );
                    }),
                    Container(
                      padding: const EdgeInsets.only(bottom: 19),
                      child: const Row(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
