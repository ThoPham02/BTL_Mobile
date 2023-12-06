import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task_management/constants/icons.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/screens/mainhome/mainhome_cubit.dart';
import 'package:task_management/widgets/bar/appbar_button.dart';
import 'package:task_management/widgets/card/list_cards.dart';
import 'package:task_management/widgets/task/list_tasks.dart';

class MainhomeScreen extends StatefulWidget {
  const MainhomeScreen({Key? key}) : super(key: key);

  @override
  State<MainhomeScreen> createState() => _MainhomeScreenState();
}

class _MainhomeScreenState extends State<MainhomeScreen> {
  final PageController controller = PageController();
  late final MainhomeCubit _cubit;

  @override
  void initState() {
    _cubit = MainhomeCubit();
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
      child: BlocBuilder<MainhomeCubit, MainhomeState>(
          buildWhen: (previous, current) {
        return previous.listCard != current.listCard ||
            previous.listTask != current.listTask ||
            previous.isProgress != current.isProgress;
      }, builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(""),
            leading: const AppBarButton(),
            actions: const <Widget>[
              IconButton(onPressed: null, icon: bellIcon),
            ],
          ),
          body: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // Welcome message
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 25, right: 25),
                  child: const Text(
                    'Hello, Jessi',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin:
                      const EdgeInsets.only(bottom: 27, left: 25, right: 26),
                  child: const Text(
                    'Complete your taks today',
                    style: TextStyle(
                      color: Color(0xFF303030),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              // Search Input
              IntrinsicHeight(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 233, 232, 232),
                  ),
                  margin:
                      const EdgeInsets.only(bottom: 25, left: 25, right: 25),
                  width: double.infinity,
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: searchIcon,
                      hintText: 'Search Your Task',
                      border: InputBorder.none,
                    ),
                    onChanged: null,
                  ),
                ),
              ),

              // List card
              IntrinsicHeight(
                  child: Container(
                      margin: const EdgeInsets.only(left: 25, bottom: 30),
                      child: SizedBox(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'My Task',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            IntrinsicHeight(
                                child: SizedBox(
                                    height: 200,
                                    child: ListCard(listCard: state.listCard))),
                          ])))),
              // List task
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
                            _cubit.addCard();
                          },
                          child: Text(
                            'In Progress',
                            style: TextStyle(
                              color:
                                  state.isProgress ? blackColor : blackColor50,
                              fontSize: fontSizeMedium,
                              fontWeight: fontWeightMedium,
                            ),
                          ),
                        )),
                        const SizedBox(width: 16.0),
                        IntrinsicHeight(
                            child: TextButton(
                          onPressed: () =>
                              {_cubit.changeTab(false), _cubit.addTask()},
                          child: Text(
                            'Complete',
                            style: TextStyle(
                              color:
                                  state.isProgress ? blackColor50 : blackColor,
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
                      top: 2, left: state.isProgress ? 24 : 150, bottom: 15),
                  color: mainColor,
                ),
              )),

              Expanded(child: ListTask(listTask: state.listTask)),
            ],
          ),

          // Bottom Nav
          // bottomNavigationBar: BottomNavigationBar(items: const [
          //   BottomNavigationBarItem(icon: searchIcon),
          //   BottomNavigationBarItem(icon: searchIcon),
          //   BottomNavigationBarItem(icon: searchIcon),
          // ]),
        );
      }),
    );
  }
}
