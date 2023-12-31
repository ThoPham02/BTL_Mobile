import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:task_management/constants/style.dart';
import 'package:task_management/models/card_entity.dart';
import 'package:task_management/models/task_entity.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/screens/main_screen/mainhome/mainhome_cubit.dart';
import 'package:task_management/screens/main_screen/mainhome/task/task_screen.dart';
import 'package:task_management/screens/main_screen/widgets/bottom_bar.dart';
import 'package:task_management/screens/main_screen/widgets/home_appbar.dart';

class MainhomeScreen extends StatefulWidget {
  const MainhomeScreen({
    Key? key,
    required this.setDrawState,
    required this.userInfo,
    required this.pageController,
    required this.setCard,
  }) : super(key: key);

  final Function setDrawState;
  final UserEntity userInfo;
  final PageController pageController;
  final Function setCard;
  @override
  State<MainhomeScreen> createState() => _MainhomeScreenState();
}

class _MainhomeScreenState extends State<MainhomeScreen> {
  final PageController controller = PageController();
  late final MainhomeCubit _cubit;

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _cubit = MainhomeCubit();
    _cubit.filterCard(widget.userInfo.userID ?? "", "");
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    _searchController.dispose();
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
        return previous != current;
      }, builder: (context, state) {
        return Scaffold(
          appBar: HomeAppBar(setDrawState: widget.setDrawState),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              _welcomeMessage(),
              _searchInput(),
              _listCards(state),
              _listTask(state),
            ],
          ),
          bottomNavigationBar: BottomBar(controller: widget.pageController),
        );
      }),
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
                  _cubit.changeTab(2);
                },
                child: Text(
                  'In Progress',
                  style: TextStyle(
                    color: state.isProgress == 2 ? blackColor : blackColor50,
                    fontSize: fontSizeMedium,
                    fontWeight: fontWeightMedium,
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              TextButton(
                onPressed: () => {
                  _cubit.changeTab(1),
                },
                child: Text(
                  'Complete',
                  style: TextStyle(
                    color: state.isProgress == 2 ? blackColor50 : blackColor,
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
            margin: EdgeInsets.only(
                left: state.isProgress == 2 ? 30 : 160, bottom: 15),
            color: mainColor,
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 75,
            maxHeight: 225,
          ),
          child: ListView.builder(
            itemCount: state.listTask.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              TaskEntity item = state.listTask[index];
              if (item.status == state.isProgress) {
                return const SizedBox();
              }
              return _taskWidget(state, item);
            },
          ),
        ),
      ],
    );
  }

  Container _taskWidget(MainhomeState state, TaskEntity item) {
    return Container(
      height: 75,
      padding: const EdgeInsets.only(
        left: 40,
        right: 35,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          state.isProgress == 1
              ? SvgPicture.asset("assets/vectors/completed.svg")
              : Stack(
                  children: [
                    const SizedBox(width: 16),
                    Container(
                      width: 4,
                      height: 50,
                      color: blueColor20,
                    ),
                    Container(
                      width: 4,
                      height: 35,
                      color: blueColor,
                    )
                  ],
                ),
          const SizedBox(width: 10),
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
                "${item.cardName}",
                style: const TextStyle(
                  fontWeight: fontWeightRegular,
                  fontSize: 13,
                  color: blackColor50,
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
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
  }

  Column _listCards(MainhomeState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            const SizedBox(
              width: 32,
            ),
            GestureDetector(
              onTap: () {
                widget.pageController.jumpToPage(4);
              },
              child: Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: mainColor,
                ),
                child: SvgPicture.asset("assets/vectors/plus_icon.svg"),
              ),
            )
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: state.listCard.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              CardEntity item = state.listCard[index];
              return _cardWidget(state.currentCard, item);
            },
          ),
        )
      ],
    );
  }

  GestureDetector _cardWidget(String currentCard, CardEntity item) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TaskScreen(),
          ),
        );
      },
      onTap: () {
        _cubit.changeCurrentTab(widget.userInfo.userID, item.cardID);
        widget.setCard(item.cardID);
      },
      child: Container(
        width: 150,
        height: 200,
        margin: const EdgeInsets.only(left: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: currentCard == item.cardID ? redColor : blueColor,
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
      ),
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
            text: TextSpan(
              style: const TextStyle(
                color: blackColor,
                fontWeight: fontWeightMedium,
              ),
              children: <TextSpan>[
                const TextSpan(
                  text: 'Hello, ',
                  style: TextStyle(
                    fontSize: 15,
                    color: blackColor,
                  ),
                ),
                TextSpan(
                  text: '${widget.userInfo.name}',
                  style: const TextStyle(
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
        controller: _searchController,
        onChanged: (text) {
          _cubit.filterCard(widget.userInfo.userID ?? "", text);
        },
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
}
