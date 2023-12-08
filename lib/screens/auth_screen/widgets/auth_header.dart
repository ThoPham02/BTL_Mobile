import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.indexPage,
    required this.controller,
  });

  final int indexPage;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
      height: 230,
      color: whiteColor,
      child: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Tasky .',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: mainColor,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    controller.jumpToPage(0);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: indexPage == 0 ? blackColor : blackColor50,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4,
                        color: indexPage == 0 ? mainColor : whiteColor,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    controller.jumpToPage(1);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: indexPage == 1 ? blackColor : blackColor50,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4,
                        color: indexPage == 1 ? mainColor : whiteColor,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
