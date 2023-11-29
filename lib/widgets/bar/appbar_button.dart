import 'package:flutter/material.dart';
import 'package:task_management/constants/icons.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key});

  void handleTabBarPress() {}

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: handleTabBarPress,
      icon: tabBarIcon,
    );
  }
}
