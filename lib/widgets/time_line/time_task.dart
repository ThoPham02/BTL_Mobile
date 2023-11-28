import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/constants/utils.dart';
import 'package:task_management/models/task.dart';

class TimeTask extends StatelessWidget {
  const TimeTask({super.key, required this.task});

  final TaskEntity task;

  @override
  Widget build(BuildContext context) {
    double topMargin = 30;
    double height = 0;
    String timeStart = "";
    String timeEnd = "";
    String? name = task.name;

    if (task.timeStart != null && task.timeEnd != null) {
      height = (task.timeEnd! - task.timeStart!) / 1;
      topMargin += task.timeStart! / 1;
      timeStart = convertMinuteToTime(task.timeStart);
      timeEnd = convertMinuteToTime(task.timeEnd);
    }
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: height,
        margin: EdgeInsets.only(top: topMargin, left: 47),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: blueColor20,
        ),
        child: Container(
          margin:
              const EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: double.infinity,
                width: 4,
                color: blueColor,
              ),
              const SizedBox(width: 20),
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$name",
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: fontWeightMedium,
                          color: blackColor),
                    ),
                    Text(
                      "$timeStart - $timeEnd",
                      style: const TextStyle(fontSize: 14, color: blackColor50),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
