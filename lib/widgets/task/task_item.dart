import 'package:flutter/material.dart';
import 'package:task_management/models/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.task});

  final TaskEntity task;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(84, 134, 233, 1),
      ),
      height: 75,
    );
  }
}
