import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/constants/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoginSelected = true;
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00fafafa),
      body: SizedBox(
        width: 375,
        height: 812,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 375,
              height: 231.08,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 142),
                    child: const Text(
                      'Tasky.',
                      style: TextStyle(
                        color: mainColor, // Change to your color
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 65),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isLoginSelected = true;
                              });
                            },
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                color: isLoginSelected
                                    ? const Color(0xFF303030)
                                    : const Color(0x30303080),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 65),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isLoginSelected = false;
                              });
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: isLoginSelected
                                    ? const Color(0x30303080)
                                    : const Color(0xFF303030),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IntrinsicHeight(
                    child: Container(
                      width: 180,
                      height: 3,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: isLoginSelected ? 0 : 192,
                      ),
                      color: mainColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 325,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 12,
                      left: 25,
                    ),
                    width: 152,
                    height: 23,
                    child: const Text(
                      "Username or E-mail",
                      style: myTextStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(
                      top: 12,
                      left: 25,
                    ),
                    height: 55,
                    width: 400,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 75,
                          spreadRadius: 0,
                          color: Color.fromRGBO(147, 147, 147, 0.1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your username or E-mail",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(48, 48, 48, 0.4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 325,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 12,
                      left: 25,
                    ),
                    width: 74,
                    height: 23,
                    child: const Text(
                      "Password",
                      style: myTextStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 12,
                      left: 25,
                    ),
                    alignment: Alignment.centerLeft,
                    height: 55,
                    width: 325,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 75,
                          spreadRadius: 0,
                          color: Color.fromRGBO(147, 147, 147, 0.1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              obscureText: !isPasswordVisible,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter your password",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(48, 48, 48, 0.4),
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
                              width: 22,
                              height: 22,
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 120,
              height: 25,
              margin: const EdgeInsets.only(bottom: 32, left: 210),
              child: const Padding(
                padding:
                    EdgeInsets.zero, // You can adjust the padding as needed
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontFamily: "Nunito Sans",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(48, 48, 48, 0.8),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 25, left: 25),
              width: 325,
              height: 57,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFF26950)),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
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
            Padding(
              padding: const EdgeInsets.only(bottom: 53),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(12.5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    child: SvgPicture.asset("assets/vectors/google_icon.svg"),
                  ),
                  const SizedBox(width: 34.5),
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(12.5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(242, 105, 80, 0.15),
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    child: SvgPicture.asset("assets/vectors/user.svg"),
                  ),
                  const SizedBox(width: 34.5),
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(12.5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3D5A98),
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    child: SvgPicture.asset("assets/vectors/logo_facebook.svg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
