import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task_management/constants/icons.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/models/task_entity.dart';
import 'package:task_management/screens/main_screen/task/task_cubit.dart';
import 'package:task_management/widgets/time_line/list_time.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final PageController controller = PageController();
  late final TaskCubit _cubit;

  @override
  void initState() {
    _cubit = TaskCubit();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return _cubit;
      },
      child: BlocBuilder<TaskCubit, TaskState>(buildWhen: (previous, current) {
        return previous != current;
      }, builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: arrowIcon,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: Stack(
            children: [
              // Background
              Container(
                height: double.maxFinite,
                width: double.maxFinite,
                color: blueColor,
              ),
              // Content
              Column(
                children: <Widget>[
                  Container(
                    margin:
                        const EdgeInsets.only(left: 25, right: 30, bottom: 35),
                    child: Column(
                      children: [
                        const Column(
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  SizedBox(
                                    width: 130,
                                    child: Text(
                                      "Mobile App Design",
                                      style: TextStyle(
                                          fontWeight: fontWeightMedium,
                                          fontSize: fontSizeLarge,
                                          color: whiteColor),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "10 Dec, 2020",
                                      style: TextStyle(color: whiteColor60),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "3 Tasks Today",
                              style: TextStyle(color: whiteColor60),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          // list tasks
                          IntrinsicHeight(
                            child: SizedBox(
                              height: 420,
                              child: ListTime(
                                // controller: controller,
                                tasks: [
                                  TaskEntity(
                                    name: "Create New Feature",
                                    timeStart: 0,
                                    timeEnd: 60,
                                  ),
                                  TaskEntity(
                                    name: "Create New Feature",
                                    timeStart: 540,
                                    timeEnd: 615,
                                  ),
                                  TaskEntity(
                                    name: "Meeting With Team",
                                    timeStart: 720,
                                    timeEnd: 795,
                                  )
                                ],
                              ),
                            ),
                          ),

                          // Detail for task
                          const SizedBox(
                            height: 10,
                          ),
                          IntrinsicHeight(
                            child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IntrinsicHeight(
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        textStyle:
                                            const TextStyle(fontSize: 23),
                                      ),
                                      onPressed: () {
                                        _cubit.changeTab(true);
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Description',
                                            style: TextStyle(
                                              color: state.isDescription
                                                  ? blackColor
                                                  : blackColor50,
                                              fontSize: fontSizeMedium,
                                              fontWeight: fontWeightMedium,
                                            ),
                                          ),
                                          Container(
                                            width: state.isDescription ? 60 : 0,
                                            height: 3,
                                            margin:
                                                const EdgeInsets.only(top: 5),
                                            color: mainColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16.0),
                                  IntrinsicHeight(
                                    child: TextButton(
                                        onPressed: () => {
                                              _cubit.changeTab(false),
                                            },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Documents',
                                              style: TextStyle(
                                                color: state.isDescription
                                                    ? blackColor50
                                                    : blackColor,
                                                fontSize: fontSizeMedium,
                                                fontWeight: fontWeightMedium,
                                              ),
                                            ),
                                            Container(
                                              width:
                                                  !state.isDescription ? 60 : 0,
                                              height: 3,
                                              margin:
                                                  const EdgeInsets.only(top: 5),
                                              color: mainColor,
                                            ),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Container(
                                margin: const EdgeInsets.only(
                                  left: 25,
                                  right: 25,
                                  top: 15,
                                ),
                                child: state.currentTask != null
                                    ? state.isDescription
                                        ? Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "${state.currentTask != null ? state.currentTask?.description : ""}",
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: fontWeightRegular,
                                                color: blackColor60,
                                              ),
                                            ),
                                          )
                                        : IntrinsicHeight(
                                            child: ListView.builder(
                                              itemCount: state.currentTask
                                                  ?.documents?.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Container(
                                                  height: 46,
                                                  width: 100,
                                                  color: blackColor50,
                                                );
                                              },
                                            ),
                                          )
                                    : null,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
