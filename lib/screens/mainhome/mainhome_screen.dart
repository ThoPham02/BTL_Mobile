import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:task_management/constants/style.dart';
import 'package:task_management/models/card_entity.dart';
import 'package:task_management/screens/mainhome/mainhome_cubit.dart';

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
    _cubit.addCard();
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
          appBar: _homeAppBar(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              _welcomeMessage(),
              _searchInput(),
              _listCards(state),
              _listTask(state),
            ],
          ),
          bottomNavigationBar: _mainBottomNavigationBar(),
        );
      }),
    );
  }

  BottomNavigationBar _mainBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {},
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: Center(
            child: Container(
              width: 46,
              height: 46,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: whiteColor20,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset("assets/vectors/home_icon.svg"),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Center(
            child: Container(
              width: 46,
              height: 46,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: whiteColor20,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset("assets/vectors/activity_icon.svg"),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Center(
            child: Container(
              width: 46,
              height: 46,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: whiteColor20,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset("assets/vectors/user_icon.svg"),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Center(
            child: Container(
              width: 46,
              height: 46,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset("assets/vectors/plus_icon.svg"),
            ),
          ),
        ),
      ],
    );
  }

  Column _listTask(MainhomeState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
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
                    color: state.isProgress ? blackColor : blackColor50,
                    fontSize: fontSizeMedium,
                    fontWeight: fontWeightMedium,
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              TextButton(
                onPressed: () => {_cubit.changeTab(false), _cubit.addTask()},
                child: Text(
                  'Complete',
                  style: TextStyle(
                    color: state.isProgress ? blackColor50 : blackColor,
                    fontSize: fontSizeMedium,
                    fontWeight: fontWeightMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 60,
            height: 3,
            margin:
                EdgeInsets.only(left: state.isProgress ? 30 : 160, bottom: 15),
            color: mainColor,
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            itemCount: state.listCard.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              CardEntity item = state.listCard[index];
              return Container(
                height: 75,
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 35,
                  top: 10,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${item.name}",
                          style: const TextStyle(
                            fontWeight: fontWeightMedium,
                            fontSize: 15,
                            color: blackColor,
                          ),
                        ),
                        Text(
                          "${item.name}",
                          style: const TextStyle(
                            fontWeight: fontWeightRegular,
                            fontSize: 13,
                            color: blackColor50,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SvgPicture.asset(
                          'assets/vectors/more_icon.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Column _listCards(MainhomeState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30, left: 25, bottom: 15),
          child: Text(
            "My Tasks",
            style: TextStyle(
              fontSize: 15,
              fontWeight: fontWeightMedium,
            ),
          ),
        ),
        SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: state.listCard.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                CardEntity item = state.listCard[index];
                return Container(
                  width: 150,
                  height: 200,
                  margin: const EdgeInsets.only(left: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(child: SizedBox()),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: whiteColor20,
                        ),
                        child: SvgPicture.asset(
                            item.iconPath ?? "assets/vectors/smartphone.svg"),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "${item.numTask} Tasks",
                        style: const TextStyle(
                          color: whiteColor,
                          fontSize: 10,
                          fontWeight: fontWeightMedium,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "${item.name}",
                        style: const TextStyle(
                          color: whiteColor,
                          fontSize: 15,
                          fontWeight: fontWeightMedium,
                        ),
                      )
                    ],
                  ),
                );
              },
            ))
      ],
    );
  }

  Container _welcomeMessage() {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: blackColor,
                fontWeight: fontWeightMedium,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Hello, ',
                  style: TextStyle(
                    fontSize: 15,
                    color: blackColor,
                  ),
                ),
                TextSpan(
                  text: 'Jessie',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Complete your taks today",
            style: TextStyle(
                fontFamily: mainFontFamily,
                fontSize: 20,
                fontWeight: fontWeightMedium),
          )
        ],
      ),
    );
  }

  Container _searchInput() {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Your Task",
          filled: true,
          fillColor: whiteColor,
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset("assets/vectors/search_icon.svg"),
          ),
        ),
      ),
    );
  }

  AppBar _homeAppBar() {
    return AppBar(
      backgroundColor: whiteColor,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: _testFirebase,
        child: Container(
          width: 46,
          height: 46,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset('assets/vectors/menu.svg'),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: null,
          child: Container(
            width: 46,
            height: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset('assets/vectors/bell_icon.svg'),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: null,
          child: Container(
            width: 46,
            height: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/avatar.png"),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }

  _testFirebase() async {
    await FirebaseFirestore.instance
        .collection("task_db")
        .add({"name": "ThoPB"});
  }
}
