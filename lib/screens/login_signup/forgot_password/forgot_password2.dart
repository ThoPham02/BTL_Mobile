import 'package:flutter/material.dart';

class ForgotPassword2 extends StatefulWidget {
  const ForgotPassword2({super.key});

  @override
  State<ForgotPassword2> createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
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
              'Enter your verification code for authenticate your account',
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
                    'Verification',
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
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.7857142857 * ffem / fem,
                      color: const Color(0x66303030),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your code',
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
