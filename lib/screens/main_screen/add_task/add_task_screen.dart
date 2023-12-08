import 'package:flutter/material.dart';
import 'package:task_management/screens/main_screen/widgets/bottom_bar.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(controller: widget.pageController),
    );
  }
}
