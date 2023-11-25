import 'package:flutter/material.dart';
// import 'package:task_management/onboard_screen2.dart';

class OnboardScreen2 extends StatefulWidget {
  const OnboardScreen2({super.key});

  @override
  State<OnboardScreen2> createState() => _OnboardScreen2State();
}

class _OnboardScreen2State extends State<OnboardScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 350,
            width: double.infinity,
            child: Image.asset("assets/images/onboard2.png"),
          ),
          Expanded(
            child: Container(
              height: 357.33,
              width: double.infinity,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 50,
                    spreadRadius: 0,
                    color: Color(0xFFC4C4C4),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 48.33),
                    child: Text(
                      "Save the time",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xCB303030),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      "Manage the progress of the tasks completion track the time and analyze tha stats",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(48, 48, 48, 0.25)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     if (_selectedIndex == 0) {
                  //       controller.jumpToPage(1);
                  //     } else {
                  //       controller.jumpToPage(0);
                  //     }
                  //   },
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     margin: const EdgeInsets.only(bottom: 35),
                  //     height: 57,
                  //     width: 325,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       color: const Color(0xFFF26950),
                  //     ),
                  //     child: const Text(
                  //       "Get Started",
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.w700,
                  //         fontSize: 18,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
