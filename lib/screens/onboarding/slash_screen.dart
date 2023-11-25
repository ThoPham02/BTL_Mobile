import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';

class SlashScreen extends StatelessWidget {
  const SlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/onboarding');
    });

    return Container(
      color: whiteColor,
      child: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 1.0, end: 1.1),
          duration: const Duration(milliseconds: 500),
          builder: (BuildContext context, double value, Widget? child) {
            return Transform.scale(
              scale: value,
              child: const Text(
                "Tasky.",
                style: TextStyle(
                  color: mainColor,
                  decoration: TextDecoration.none,
                  fontFamily: "Poppins",
                  fontSize: 25.0,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
