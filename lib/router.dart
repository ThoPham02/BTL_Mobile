import 'package:task_management/screens/example/example_screen.dart';
import 'package:task_management/screens/mainhome/mainhome_screen.dart';
import 'package:task_management/screens/slash_screen.dart';

final routes = {
  "/": (context) => const SlashScreen(),
  "/home": (context) => const SlashScreen(),
  "/example": (context) => const HomeScreen2(),
  "/slash": (context) => const SlashScreen(),
  "/mainhome": (context) => const MainhomeScreen(),
  "/onboarding": (context) => const MainhomeScreen()
};
