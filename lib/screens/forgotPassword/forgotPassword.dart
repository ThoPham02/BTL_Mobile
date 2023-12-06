import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/screens/forgotPassword/forgotPassword1.dart';
import 'package:task_management/screens/forgotPassword/forgotPassword2.dart';
import 'package:task_management/screens/forgotPassword/forgotPassword3.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final PageController _pageController = PageController(initialPage: 0);

  void _showForgotPasswordDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
          child: AlertDialog(
            content: SizedBox(
              width: 400,
              height: 280,
              child: PageView(
                controller: _pageController,
                children: const [
                  ForgotPassword1(),
                  ForgotPassword2(),
                  ForgotPassword3(),
                ],
              ),
            ),
            contentPadding: const EdgeInsets.all(25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Close',
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.7857142857,
                          color: Color(0x7ff26950),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (_pageController.page == 2) {
                          Navigator.of(context).pop(); // Close AlertDialog
                          // Perform final actions like sending a password reset request
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: mainColor,
                            width: 2.0,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return InkWell(
      onTap: _showForgotPasswordDialog,
      child: Container(
        margin: EdgeInsets.fromLTRB(212 * fem, 0 * fem, 0 * fem, 32 * fem),
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            fontFamily: 'Nunito Sans',
            fontSize: 14 * ffem,
            fontWeight: FontWeight.w400,
            height: 1.7857142857 * ffem / fem,
            color: const Color(0xcc303030),
          ),
        ),
      ),
    );
  }
}
