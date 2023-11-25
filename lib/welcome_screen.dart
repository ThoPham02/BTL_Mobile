import 'package:flutter/material.dart';
import 'package:task_management/onBoard/onboard.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key, required this.title});

  final String title;

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to ",
                  style: TextStyle(
                    fontFamily: "Nunito Sans",
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Tasky.",
                  style: TextStyle(
                    fontFamily: "Nunito Sans",
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFF26950),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 175.53, left: 25, right: 25),
            child: Text(
              "An application that helps to help organize your activities ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Nunito Sans",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 29 / 16,
                letterSpacing: 0,
                color: Color(0X99252729),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Onboard(),
                ),
              );
            },
            child: Container(
              height: 57,
              width: 325,
              margin: const EdgeInsets.only(bottom: 29),
              decoration: BoxDecoration(
                color: const Color(0xFFF26950),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Let's Go",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          // const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 29),
            child: Text(
              "Not Now",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0x80303030),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
