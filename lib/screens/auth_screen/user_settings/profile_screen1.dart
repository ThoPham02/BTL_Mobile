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
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  25.16 * fem, 14 * fem, 13.5 * fem, 35.59 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 76.84 * fem, 0 * fem),
                    width: double.infinity,
                    height: 85 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          // rectangle104Fgq (1:486)
                          width: 85 * fem,
                          height: 85 * fem,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(9.0261030197 * fem),
                            child: Image.asset(
                              'assets/page-1/images/rectangle-104-pNH.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              21.5 * fem, 19 * fem, 0 * fem, 19 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 29 * fem, 0 * fem),
                                width: 119 * fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
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
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0.5 * fem,
                                          0 * fem, 29.85 * fem, 0 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 8.17 * fem, 4 * fem),
                                            width: 18.48 * fem,
                                            height: 13 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector.png',
                                              width: 18.48 * fem,
                                              height: 13 * fem,
                                            ),
                                          ),
                                          Text(
                                            'VIP Usser',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5 * ffem / fem,
                                              letterSpacing:
                                                  -0.1650000066 * fem,
                                              color: const Color(0xfff26950),
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
                                    0 * fem, 0 * fem, 0 * fem, 21 * fem),
                                width: 5 * fem,
                                height: 10 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-up-hdf.png',
                                  width: 5 * fem,
                                  height: 10 * fem,
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
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
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
                    padding: EdgeInsets.fromLTRB(
                        35.16 * fem, 29.84 * fem, 24.84 * fem, 48.35 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // generalBuF (1:516)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 25.16 * fem),
                          child: Text(
                            'General',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4249999183 * ffem / fem,
                              color: const Color(0x7f303030),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 24.34 * fem, 0 * fem),
                                width: 46 * fem,
                                height: 46 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-wym3.png',
                                  width: 46 * fem,
                                  height: 46 * fem,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 110.16 * fem, 0 * fem),
                                child: Text(
                                  'Manage Account',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4249999183 * ffem / fem,
                                    color: const Color(0xff303030),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5 * fem,
                                height: 10 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-up-b9P.png',
                                  width: 5 * fem,
                                  height: 10 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 24.34 * fem, 0 * fem),
                                width: 46 * fem,
                                height: 46 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-akxu.png',
                                  width: 46 * fem,
                                  height: 46 * fem,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 117.66 * fem, 0 * fem),
                                child: Text(
                                  'Notification',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4249999183 * ffem / fem,
                                    color: const Color(0xff303030),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 45 * fem,
                                height: 25.67 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-3xcy.png',
                                  width: 45 * fem,
                                  height: 25.67 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 21.59 * fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 22.61 * fem, 0 * fem),
                                width: 46 * fem,
                                height: 46 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-48cm.png',
                                  width: 46 * fem,
                                  height: 46 * fem,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 92.89 * fem, 0 * fem),
                                child: Text(
                                  'Become An VIP User',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4249999183 * ffem / fem,
                                    color: const Color(0xff303030),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5 * fem,
                                height: 10 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-up-VbB.png',
                                  width: 5 * fem,
                                  height: 10 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 198.39 * fem, 25.16 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 22.61 * fem, 0 * fem),
                                width: 46 * fem,
                                height: 46 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-ubb3.png',
                                  width: 46 * fem,
                                  height: 46 * fem,
                                ),
                              ),
                              Text(
                                'Logout',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4249999183 * ffem / fem,
                                  color: const Color(0xff303030),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 25.16 * fem),
                          child: Text(
                            'Privacy',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4249999183 * ffem / fem,
                              color: const Color(0x7f303030),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 11.44 * fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 24.34 * fem, 0 * fem),
                                width: 46 * fem,
                                height: 46 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-8ekx.png',
                                  width: 46 * fem,
                                  height: 46 * fem,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 148.16 * fem, 0 * fem),
                                child: Text(
                                  'Help Center',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4249999183 * ffem / fem,
                                    color: const Color(0xff303030),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5 * fem,
                                height: 10 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-up-FdX.png',
                                  width: 5 * fem,
                                  height: 10 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 24.34 * fem, 0 * fem),
                                width: 46 * fem,
                                height: 46 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-oikp.png',
                                  width: 46 * fem,
                                  height: 46 * fem,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 168.16 * fem, 0 * fem),
                                child: Text(
                                  'About Us',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4249999183 * ffem / fem,
                                    color: const Color(0xff303030),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5 * fem,
                                height: 10 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-up.png',
                                  width: 5 * fem,
                                  height: 10 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 375 * fem,
                    height: 79.12 * fem,
                    child: Image.asset(
                      'assets/page-1/images/auto-group-crwp.png',
                      width: 375 * fem,
                      height: 79.12 * fem,
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
