import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';

class Task {
  final String name;
  final bool isCompleted;

  Task({
    required this.name,
    required this.isCompleted,
  });
}

class NotificationScreen extends StatelessWidget {
  // Danh sách các tasks có thể lấy từ Firebase.
  final List<Task> tasks = [
    Task(name: 'Create New Features', isCompleted: true),
    Task(name: 'Interview User Flow', isCompleted: false),
    Task(name: 'Features', isCompleted: true)
  ];

  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor, // Nền màu trắng cho AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Colors.black), // Sử dụng icon quay lại có sẵn của Flutter
          onPressed: () {
            Navigator.of(context).pop(); // Quay lại màn hình trước đó
          },
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color(0xFFFFFFFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    // Tạo widget cho từng task
                    return TaskItem(
                      task: tasks[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: task.isCompleted
          ? Image.asset('assets/images/completed.png')
          : Image.asset('assets/images/failed.png'),
      title: Text(task.name),
      subtitle: Text(task.isCompleted ? 'Completed' : 'Failed'),
      trailing: const Icon(Icons.more_vert),
    );
  }
}
