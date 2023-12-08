// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:task_management/screens/onboard_screen/onboard_screen1.dart';
import 'package:task_management/screens/onboard_screen/onboard_screen2.dart';
import 'package:task_management/screens/onboard_screen/slash_screen.dart';

class OnboardController extends StatefulWidget {
  const OnboardController({super.key});

  @override
  State<OnboardController> createState() => _OnboardControllerState();
}

class _OnboardControllerState extends State<OnboardController> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: <Widget>[
          SlashScreen(controller: controller),
          OnboardScreen1(controller: controller),
          OnboardScreen2(controller: controller),
        ],
      ),
    );
  }
}
