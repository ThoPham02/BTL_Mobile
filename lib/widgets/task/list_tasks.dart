import 'package:flutter/material.dart';
import 'package:task_management/models/task_entity.dart';
import 'package:task_management/widgets/task/task_item.dart';

class ListTask extends StatefulWidget {
  final List<TaskEntity> listTask;

  int get count => listTask.length;

  const ListTask({Key? key, required this.listTask}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ListTaskState createState() => _ListTaskState();
}

class _ListTaskState extends State<ListTask> {
  @override
  Widget build(BuildContext context) {
    return widget.count > 0
        ? ListView.builder(
            itemCount: widget.count,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              TaskEntity task = widget.listTask[index];
              return TaskItem(task: task);
            },
          )
        : const SizedBox(
            height: 150,
            // child: Center(
            //   child: Text("You don't have any tasks today."),
            // ),
          );
  }
}
