import 'package:flutter/material.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/screens/main_screen/drawer/drawer_screen.dart';
import 'package:task_management/screens/main_screen/mainhome/mainhome_screen.dart';

class MainController extends StatefulWidget {
  const MainController({super.key});

  @override
  State<MainController> createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> {
  double xOffset = 300;
  double yOffset = 100;
  double scaleFactor = 0.75;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final UserEntity user =
        ModalRoute.of(context)?.settings.arguments as UserEntity;
    if (user.userID == "") {
      Navigator.pushNamed(context, "auth");
    }
    return Scaffold(
      body: Stack(
        children: [
          const DrawerScreen(),
          AnimatedContainer(
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor),
            duration: const Duration(milliseconds: 250),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
            ),
            child: const MainhomeScreen(),
          )
        ],
      ),
    );
  }
}
