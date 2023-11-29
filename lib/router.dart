import 'package:task_management/screens/example/example_screen.dart';
import 'package:task_management/screens/login_signup/signup_screen.dart';
import 'package:task_management/screens/login_signup/login_screen.dart';
import 'package:task_management/screens/mainhome/mainhome_screen.dart';
import 'package:task_management/screens/onboarding/onboard.dart';
import 'package:task_management/screens/onboarding/onboard_screen1.dart';
import 'package:task_management/screens/onboarding/slash_screen.dart';

final routes = {
  "/": (context) => const SlashScreen(),
  "/home": (context) => const SlashScreen(),
  "/example": (context) => const HomeScreen2(),
  "/slash": (context) => const SlashScreen(),
  "/mainhome": (context) => const MainhomeScreen(),
  "/onboarding": (context) => const Onboard(),
};
