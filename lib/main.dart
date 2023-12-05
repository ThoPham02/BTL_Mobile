import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:task_management/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAKIIV6aQ1Nj93b6Mm1e7vjqw6e4y_1VZ8",
      appId: "1:84398007923:android:72995f09945d05dd282c06",
      messagingSenderId: "84398007923",
      projectId: "taskmanagement-57a88",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Management',
      initialRoute: "/",
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
