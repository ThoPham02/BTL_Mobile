import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/constants/style.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {},
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: GestureDetector(
            onTap: () {
              try {
                controller.jumpToPage(0);
              } catch (e) {
                Navigator.pop(context);
              }
            },
            child: Center(
              child: Container(
                width: 46,
                height: 46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SvgPicture.asset("assets/vectors/home_icon.svg"),
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: GestureDetector(
            onTap: () {
              try {
                controller.jumpToPage(1);
              } catch (e) {
                Navigator.pop(context);
              }
            },
            child: Center(
              child: Container(
                width: 46,
                height: 46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: whiteColor20,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SvgPicture.asset("assets/vectors/activity_icon.svg"),
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: GestureDetector(
            onTap: () {
              try {
                controller.jumpToPage(2);
              } catch (e) {
                Navigator.pop(context);
              }
            },
            child: Center(
              child: Container(
                width: 46,
                height: 46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: whiteColor20,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SvgPicture.asset("assets/vectors/user_icon.svg"),
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: GestureDetector(
            onTap: () {
              try {
                controller.jumpToPage(3);
              } catch (e) {
                Navigator.pop(context);
              }
            },
            child: Center(
              child: Container(
                width: 46,
                height: 46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SvgPicture.asset("assets/vectors/plus_icon.svg"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
