import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:task_management/onboard_screen2.dart';

class OnboardScreen2 extends StatefulWidget {
  const OnboardScreen2({super.key, required this.controller});

  final PageController controller;

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
            height: 490,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Padding(
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
                  const Padding(
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
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "auth");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 57,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFF26950),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40, top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            widget.controller.jumpToPage(1);
                          },
                          child: SvgPicture.asset("assets/vectors/ic_cham.svg"),
                        ),
                        const SizedBox(width: 15.0),
                        SvgPicture.asset("assets/vectors/ic_cham_cam.svg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
