// import 'package:flutter/material.dart';
// import 'package:task_management/login_screen.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool isLoginSelected = true;
//   final PageController controller = PageController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 30,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//           ),
//           PageView(
//             controller: controller,
//             children: const [
//               LoginScreen(),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:task_management/login_screen.dart';
import 'package:task_management/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In' 'Sign Up'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: const <Widget>[
                LoginScreen(),
                SignUpScreen(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              if (_currentPage == 0) {
                _pageController.jumpToPage(1);
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              }
            },
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentPage,
      //   onTap: (index) {
      //     _pageController.animateToPage(
      //       index,
      //       duration: const Duration(milliseconds: 300),
      //       curve: Curves.easeInOut,
      //     );
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.login),
      //       label: 'Login',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_add),
      //       label: 'Sign Up',
      //     ),
      //   ],
      // ),
    );
  }
}
