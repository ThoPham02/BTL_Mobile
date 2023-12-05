import 'package:flutter/material.dart';

class ForgotPassword1 extends StatefulWidget {
  const ForgotPassword1({super.key});

  @override
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {
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
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7.13 * fem),
            child: Text(
              'Forgot Password',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 21 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.5 * ffem / fem,
                color: const Color(0xcc212121),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 32.72 * fem),
            child: Text(
              'Enter your username or email we will send 5 digits verification code',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.7899998983 * ffem / fem,
                color: const Color(0x66252729),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(0.06 * fem, 0 * fem, 0 * fem, 25.29 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10 * fem),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0.19 * fem, 0 * fem, 0 * fem, 20.37 * fem),
                  child: Text(
                    'Username or E-mail',
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
                  padding: EdgeInsets.fromLTRB(
                      23.69 * fem, 5 * fem, 23.69 * fem, 5 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xfff8f8f8),
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: TextField(
                    // Chỉ cho nhập số
                    // keyboardType: TextInputType.number,
                    // // Giới hạn độ dài của chuỗi nhập vào
                    // maxLength: 5, // Đổi giá trị này nếu bạn muốn có độ dài khác
                    // // Đặt giá trị mã xác minh vào đây
                    // onChanged: (value) {
                    //   // Xử lý giá trị mã xác minh, bạn có thể lưu vào một biến hoặc state
                    //   // value là giá trị người dùng nhập
                    // },
                    style: TextStyle(
                      fontFamily: 'Nunito Sans',
                      fontSize: 13 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.7857142857 * ffem / fem,
                      color: const Color(0x66303030),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your username or E-mail',
                      border: InputBorder.none,
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
        ],
      ),
    );
  }
}
