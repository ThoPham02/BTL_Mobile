import 'package:flutter/material.dart';

import 'package:task_management/constants/style.dart';

import 'package:task_management/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: "Flutter",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const WelcomeScreen(
                  title: '',
                )),
      );
    });

    return Container(
      width: 375,
      height: 812,
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
