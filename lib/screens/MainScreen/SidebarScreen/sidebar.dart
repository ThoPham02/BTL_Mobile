import 'package:flutter/material.dart';
import 'package:task_management/screens/MainScreen/SidebarScreen/drawerscreen.dart';
import 'package:task_management/screens/MainScreen/SidebarScreen/testscreen.dart';

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
