import 'package:flutter/material.dart';
import 'package:task_management/screens/main_screen/sidebar/drawer_screen.dart';
import 'package:task_management/screens/main_screen/sidebar/test_screen.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          TestScreen(),
        ],
      ),
    );
  }
}
