// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/screens/main_screen/activity/activity_screen.dart';
import 'package:task_management/screens/main_screen/add_task/add_task_screen.dart';
import 'package:task_management/screens/main_screen/drawer/drawer_screen.dart';
import 'package:task_management/screens/main_screen/mainhome/mainhome_screen.dart';
import 'package:task_management/screens/main_screen/user/user_screen.dart';

class MainController extends StatefulWidget {
  const MainController({super.key});

  @override
  State<MainController> createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  setDrawerOpen() {
    setState(() {
      xOffset = 300;
      yOffset = 100;
      scaleFactor = 0.75;
      isDrawerOpen = true;
    });
  }

  setDrawerClose() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final UserEntity user =
        ModalRoute.of(context)?.settings.arguments as UserEntity;
    final PageController _controller = PageController();

    if (user.userID == "") {
      Navigator.pushNamed(context, "auth");
    }
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(
            userInfo: user,
            setDrawState: setDrawerClose,
          ),
          AnimatedContainer(
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor),
            duration: const Duration(milliseconds: 250),
            child: PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                MainhomeScreen(
                  setDrawState: setDrawerOpen,
                  userInfo: user,
                  pageController: _controller,
                ),
                ActivityScreen(
                  pageController: _controller,
                ),
                UserScreen(
                  pageController: _controller,
                  userInfo: user,
                ),
                AddTaskScreen(
                  pageController: _controller,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
