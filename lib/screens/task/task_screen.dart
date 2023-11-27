import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/constants/icons.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/screens/task/task_cubit.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final PageController controller = PageController();
  final ScrollController _controller =
      ScrollController(initialScrollOffset: 200.0);
  late final TaskCubit _cubit;

  @override
  void initState() {
    _cubit = TaskCubit();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return _cubit;
      },
      child: BlocBuilder<TaskCubit, TaskState>(buildWhen: (previous, current) {
        return previous.selectedIndex != current.selectedIndex ||
            previous.isDescription != current.isDescription;
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
                ListView(
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(
                            left: 25, right: 30, bottom: 35),
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
                                ))
                          ],
                        )),
                    Container(
                      height: 553,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(children: <Widget>[
                        const SizedBox(
                          height: 25,
                        ),
                        // list tasks
                        Stack(
                          children: [
                            IntrinsicHeight(
                              child: Container(
                                color: blackColor,
                                height: 300,
                              ),
                            )
                          ],
                        ),

                        // Detail for task
                        const SizedBox(
                          height: 25,
                        ),
                        IntrinsicHeight(
                          child: Container(
                            margin: const EdgeInsets.only(left: 15),
                            width: double.infinity,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IntrinsicHeight(
                                      child: TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: const TextStyle(fontSize: 23),
                                    ),
                                    onPressed: () {
                                      _cubit.changeTab(true);
                                    },
                                    child: Text(
                                      'Description',
                                      style: TextStyle(
                                        color: state.isDescription
                                            ? blackColor
                                            : blackColor50,
                                        fontSize: fontSizeMedium,
                                        fontWeight: fontWeightMedium,
                                      ),
                                    ),
                                  )),
                                  const SizedBox(width: 16.0),
                                  IntrinsicHeight(
                                      child: TextButton(
                                    onPressed: () => {
                                      _cubit.changeTab(false),
                                    },
                                    child: Text(
                                      'Documents',
                                      style: TextStyle(
                                        color: state.isDescription
                                            ? blackColor50
                                            : blackColor,
                                        fontSize: fontSizeMedium,
                                        fontWeight: fontWeightMedium,
                                      ),
                                    ),
                                  )),
                                ]),
                          ),
                        ),
                        IntrinsicHeight(
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 60,
                            height: 3,
                            margin: EdgeInsets.only(
                                top: 2,
                                left: state.isDescription ? 24 : 140,
                                bottom: 15),
                            color: mainColor,
                          ),
                        )),
                      ]),
                    )
                  ],
                )
              ],
            ));
      }),
    );
  }
}
