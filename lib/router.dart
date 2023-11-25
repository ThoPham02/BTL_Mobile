import 'package:task_management/main.dart';
import 'package:task_management/welcome_screen.dart';

final routes = {
  "/": (context) => const MyHomePage(
        title: '',
      ),
  // "/example": (context) => const HomeScreen2(),
  "/slash": (context) => const MyHomePage(
        title: '',
      ),
  '/onboarding': (context) => const WelcomeScreen(
        title: '',
      ),
  // '/onboarding/1': (context) => OnboardingScreen1(),
};
