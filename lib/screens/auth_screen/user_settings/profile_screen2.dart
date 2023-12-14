import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // profilescreenk4M (1:539)
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupu1qxGYV (Qpcnz7iyUY8m6wNJHbu1qX)
              padding: EdgeInsets.fromLTRB(
                  23.91 * fem, 14 * fem, 13.5 * fem, 41.15 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iphonexbarsstatusdefaultB9f (1:570)
                    margin: EdgeInsets.fromLTRB(
                        8.59 * fem, 0 * fem, 0 * fem, 24.75 * fem),
                    width: double.infinity,
                    height: 19 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // timeU8m (1:572)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 235 * fem, 0 * fem),
                          child: Text(
                            '9:41',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575 * ffem / fem,
                              letterSpacing: -0.1650000066 * fem,
                              color: const Color(0xff252729),
                            ),
                          ),
                        ),
                        Container(
                          // containerAGV (1:573)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 3.16 * fem, 0 * fem, 4.34 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.08 * fem, 0 * fem, 0 * fem),
                                width: 17.1 * fem,
                                height: 10.7 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-CSy.png',
                                  width: 17.1 * fem,
                                  height: 10.7 * fem,
                                ),
                              ),
                              SizedBox(
                                width: 5 * fem,
                              ),
                              Container(
                                // wifinof (1:586)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.04 * fem, 0 * fem, 0 * fem),
                                width: 15.4 * fem,
                                height: 11.06 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-SJy.png',
                                  width: 15.4 * fem,
                                  height: 11.06 * fem,
                                ),
                              ),
                              SizedBox(
                                width: 5 * fem,
                              ),
                              SizedBox(
                                // batteryudP (1:574)
                                width: 24.5 * fem,
                                height: 11.5 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-9bb.png',
                                  width: 24.5 * fem,
                                  height: 11.5 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 291.59 * fem, 19.68 * fem),
                    width: 46 * fem,
                    height: 46 * fem,
                    child: Image.asset(
                      'assets/page-1/images/auto-group-b5bb.png',
                      width: 46 * fem,
                      height: 46 * fem,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        104.09 * fem, 0 * fem, 114.5 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle104F4y (1:593)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 16.37 * fem),
                          width: 85 * fem,
                          height: 85 * fem,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(9.0261030197 * fem),
                            child: Image.asset(
                              'assets/page-1/images/rectangle-104-FQR.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          // jessieyaegarvwo (1:594)
                          'Jessie Yaegar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            letterSpacing: -0.1650000066 * fem,
                            color: const Color(0xff303030),
                          ),
                        ),
                        Container(
                          // group112TB3 (1:595)
                          margin: EdgeInsets.fromLTRB(
                              15.42 * fem, 0 * fem, 14.92 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vectoraFf (1:597)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8.17 * fem, 4 * fem),
                                width: 18.48 * fem,
                                height: 13 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-zdB.png',
                                  width: 18.48 * fem,
                                  height: 13 * fem,
                                ),
                              ),
                              Text(
                                // vipusserhLH (1:596)
                                'VIP Usser',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  letterSpacing: -0.1650000066 * fem,
                                  color: const Color(0xfff26950),
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
            Container(
              padding:
                  EdgeInsets.fromLTRB(25 * fem, 25.68 * fem, 25 * fem, 8 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35 * fem),
                  topRight: Radius.circular(35 * fem),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x44c4c4c4),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 25 * fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 9.58 * fem),
                    width: double.infinity,
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
                            'Display Name',
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
                              20 * fem, 15 * fem, 20 * fem, 15 * fem),
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
                          child: Text(
                            'Jessie Yaegar',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.7857142857 * ffem / fem,
                              color: const Color(0x66303030),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group92xZ3 (1:543)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 9.58 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // usernamegV3 (1:547)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 19.5 * fem),
                          child: Text(
                            'Username',
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
                          // group91b6D (1:544)
                          padding: EdgeInsets.fromLTRB(
                              20 * fem, 15 * fem, 20 * fem, 15 * fem),
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
                          child: Text(
                            'jessieyaegar',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.7857142857 * ffem / fem,
                              color: const Color(0x66303030),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group933yo (1:553)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 9.58 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // emailNWH (1:557)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 19.5 * fem),
                          child: Text(
                            'Email',
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
                          // group91HdF (1:554)
                          padding: EdgeInsets.fromLTRB(
                              20 * fem, 15 * fem, 20 * fem, 15 * fem),
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
                          child: Text(
                            'jessieyaegar24@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.7857142857 * ffem / fem,
                              color: const Color(0x66303030),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group94kmj (1:558)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 41.62 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // passwordg9b (1:569)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 19.5 * fem),
                          child: Text(
                            'Password',
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
                          // group91akm (1:559)
                          padding: EdgeInsets.fromLTRB(
                              20 * fem, 15 * fem, 17.95 * fem, 15 * fem),
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
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // jessieyaegar24gmailcom4vq (1:561)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 93 * fem, 0 * fem),
                                child: Text(
                                  'jessieyaegar24@gmail.com',
                                  style: TextStyle(
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.7857142857 * ffem / fem,
                                    color: const Color(0x66303030),
                                  ),
                                ),
                              ),
                              SizedBox(
                                // autogroupbhpyaeH (QpcoqRe9UCLtMLySoibHpy)
                                width: 22.05 * fem,
                                height: 22 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-bhpy.png',
                                  width: 22.05 * fem,
                                  height: 22 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // lineK65 (1:591)
                    margin: EdgeInsets.fromLTRB(
                        95 * fem, 0 * fem, 95 * fem, 0 * fem),
                    width: double.infinity,
                    height: 5 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100 * fem),
                      color: const Color(0xcc303030),
                    ),
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
