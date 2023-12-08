import 'package:task_management/screens/auth_screen/auth_controller.dart';
import 'package:task_management/screens/main_screen/main_controller.dart';
import 'package:task_management/screens/onboard_screen/onboard_controller.dart';

final routes = {
  "": (context) => const OnboardController(),
  "main": (context) => const MainController(),
  "auth": (context) => const AuthController(),
};
