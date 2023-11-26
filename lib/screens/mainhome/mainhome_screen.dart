import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/constants/icons.dart';
import 'package:task_management/constants/style.dart';

import 'package:task_management/screens/mainhome/mainhome_cubit.dart';
import 'package:task_management/widgets/bar/appbar_button.dart';
import 'package:task_management/widgets/card/list_cards.dart';

class MainhomeScreen extends StatefulWidget {
  const MainhomeScreen({Key? key}) : super(key: key);

  @override
  State<MainhomeScreen> createState() => _MainhomeScreenState();
}

class _MainhomeScreenState extends State<MainhomeScreen> {
  void handleBellButtonPress() {}

  void handleUserButtonPress() {}

  late final MainhomeCubit _cubit;

  @override
  void initState() {
    _cubit = MainhomeCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return _cubit;
      },
      child: BlocBuilder<MainhomeCubit, MainhomeState>(
          buildWhen: (previous, current) {
        return previous.selectedIndex != current.selectedIndex;
      }, builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(""),
            leading: const AppBarButton(),
            actions: <Widget>[
              IconButton(onPressed: handleBellButtonPress, icon: bellIcon),
            ],
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                // Welcome message
                Container(
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
                Container(
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
                      // onChanged: (text) {},
                    ),
                  ),
                ),

                // List card
                IntrinsicHeight(
                    child: Container(
                        margin: const EdgeInsets.only(left: 25),
                        width: double.infinity,
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
                              ListCard(listCard: state.listCard),
                            ]))),
                // List task
                IntrinsicHeight(
                  child: Container(
                    margin: const EdgeInsets.only(left: 25),
                    width: double.infinity,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IntrinsicHeight(
                            child: Text(
                              'In Progress',
                              style: TextStyle(
                                color: blackColor,
                                fontSize: fontSizeMedium,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Text(
                              'Complete',
                              style: TextStyle(
                                color: blackColor,
                                fontSize: fontSizeMedium,
                                fontWeight: fontWeightMedium,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                IntrinsicHeight(
                  child: Container(
                    color: const Color(0xFFf26950),
                    width: double.infinity,
                    child: const SizedBox(),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
