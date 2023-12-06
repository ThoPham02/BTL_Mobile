import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              isDrawerOpen
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          scaleFactor = 1;
                          isDrawerOpen = false;
                        });
                      },
                      icon: SvgPicture.asset('assets/vectors/menu.svg'))
                  : IconButton(
                      icon: SvgPicture.asset('assets/vectors/menu.svg'),
                      onPressed: () {
                        setState(() {
                          xOffset = 300;
                          yOffset = 100;
                          scaleFactor = 0.8;
                          isDrawerOpen = true;
                        });
                      },
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
