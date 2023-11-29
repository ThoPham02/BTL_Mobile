import 'package:flutter/material.dart';
import 'package:task_management/models/task_entity.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.task});

  final TaskEntity task;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(84, 134, 233, 1),
      ),
      height: 75,
    );
  }
}
