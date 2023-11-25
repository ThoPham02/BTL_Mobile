import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management/login_screen.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:task_management/onBoard/onboard_screen1.dart';
import 'package:task_management/onBoard/onboard_screen2.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int _selectedIndex = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: const <Widget>[
                OnboardScreen1(),
                OnboardScreen2(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              if (_selectedIndex == 0) {
                controller.jumpToPage(1);
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: 57,
              width: 325,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFF26950),
              ),
              child: Text(
                _selectedIndex == 0 ? "Next" : "Get Started",
                style: const TextStyle(
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
                    controller.jumpToPage(0);
                  },
                  child: _selectedIndex == 0
                      ? SvgPicture.asset("assets/vectors/ic_cham_cam.svg")
                      : SvgPicture.asset("assets/vectors/ic_cham.svg"),
                ),
                const SizedBox(width: 15.0), // khoảng cách giữa hai biểu tượng
                InkWell(
                  onTap: () {
                    controller.jumpToPage(1);
                  },
                  child: _selectedIndex == 0
                      ? SvgPicture.asset("assets/vectors/ic_cham.svg")
                      : SvgPicture.asset("assets/vectors/ic_cham_cam.svg"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
