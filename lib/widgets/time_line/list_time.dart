import 'package:flutter/material.dart';
import 'package:task_management/models/task_entity.dart';
import 'package:task_management/widgets/time_line/time_item.dart';
import 'package:task_management/widgets/time_line/time_task.dart';

class ListTime extends StatelessWidget {
  ListTime({super.key, required this.tasks});
  static double timeIndex = DateTime.now().hour * 50;
  final ScrollController controller = ScrollController(
      initialScrollOffset: timeIndex <= 100 ? 0 : timeIndex - 100);
  final List<TaskEntity> tasks;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 25, right: 25),
      child: SingleChildScrollView(
        controller: controller,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: 1440,
                child: ListView.builder(
                  itemCount: 24,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return TimeItem(index: index);
                  },
                ),
              ),
              // if (tasks.isNotEmpty)
              // ListView.builder(
              //   itemCount: tasks.length,
              //   itemBuilder: (context, index) {
              //     TaskEntity task = tasks[index];
              //     return TimeTask(task: task);
              //   },
              // ),
              TimeTask(task: tasks[0]),
              TimeTask(task: tasks[1]),
              TimeTask(task: tasks[2]),
            ],
          ),
        ),
      ),
    );
  }
}
