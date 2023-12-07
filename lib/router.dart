import 'package:task_management/screens/example/example_screen.dart';
import 'package:task_management/screens/mainhome/mainhome_screen.dart';
import 'package:task_management/screens/onboarding/onboard.dart';
import 'package:task_management/screens/onboarding/slash_screen.dart';
import 'package:task_management/screens/task/task_screen.dart';

final routes = {
  "/": (context) => MainhomeScreen(),
  "/example": (context) => const HomeScreen2(),
  "/slash": (context) => const SlashScreen(),
  "/mainhome": (context) => MainhomeScreen(),
  "/onboarding": (context) => const Onboard(),
  "/task": (context) => const TaskScreen(),
};
