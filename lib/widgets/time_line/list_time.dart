import 'package:flutter/material.dart';
import 'package:task_management/models/task.dart';
import 'package:task_management/widgets/time_line/time_item.dart';
import 'package:task_management/widgets/time_line/time_task.dart';

class ListTime extends StatelessWidget {
  ListTime({super.key, required this.tasks});
  static double timeIndex = DateTime.now().hour * 60;
  final ScrollController controller = ScrollController(
      initialScrollOffset:
          timeIndex <= 180 ? 0 : (timeIndex > 1200 ? 1020 : timeIndex - 180));
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
                height: 1470,
                child: ListView.builder(
                  itemCount: 24,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return TimeItem(index: index);
                  },
                ),
              ),
              if (tasks.isNotEmpty)
                SizedBox(
                  height: 1470,
                  child: Stack(
                    children: List.generate(
                      tasks.length,
                      (index) {
                        return TimeTask(task: tasks[index]);
                      },
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
