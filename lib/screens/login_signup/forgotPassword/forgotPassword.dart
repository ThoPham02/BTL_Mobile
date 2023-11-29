import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management/constants/style.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return GestureDetector(
      onTap: () {
        // Hiển thị AlertDialog khi người dùng nhấn vào forgotPassword
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Forgot Password'),
              content: SizedBox(
                width: 400 * fem, // Đặt chiều rộng tùy ý
                height: 190 * fem, // Đặt chiều cao tùy ý
                child: const Text('Your custom content goes here.'),
              ),
              actions: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Đặt chúng ở bên trái
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Đóng AlertDialog
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 16 * fem, 0),
                        child: Text(
                          'Close',
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 14 * fem,
                            fontWeight: FontWeight.w400,
                            height: 1.7857142857 * fem,
                            color: const Color(0x7ff26950),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Đóng AlertDialog
                      },
                      child: Container(
                        width: 46 * fem,
                        height: 46 * fem,
                        decoration: BoxDecoration(
                          color: mainColor, // Thay đổi màu nền tùy ý
                          borderRadius: BorderRadius.circular(10 * fem),
                          border: Border.all(
                            color: mainColor, // Thay đổi màu của border tùy ý
                            width: 2.0 * fem,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color:
                              Colors.white, // Thay đổi màu của biểu tượng tùy ý
                          size: 20 * fem,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
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
