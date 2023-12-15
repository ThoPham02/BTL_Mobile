import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/models/task_entity.dart';
import 'package:task_management/screens/auth_screen/widgets/input.dart';
import 'package:task_management/screens/main_screen/add_task/add_task_cubit.dart';
import 'package:task_management/screens/main_screen/widgets/bottom_bar.dart';
import 'package:task_management/screens/main_screen/widgets/pick_time.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({
    super.key,
    required this.pageController,
    required this.userID,
    required this.cardID,
  });

  final PageController pageController;
  final String userID;
  final String cardID;

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late final AddTaskCubit _cubit;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _desController = TextEditingController();

  @override
  void initState() {
    _cubit = AddTaskCubit();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.cardID);
    return BlocProvider(
      create: (context) {
        return _cubit;
      },
      child: BlocBuilder<AddTaskCubit, AddTaskState>(
          buildWhen: (previous, current) {
        return previous != current;
      }, builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: whiteColor,
            elevation: 0.0,
            title: const Text(
              "Add Your Task",
              style: TextStyle(
                fontSize: 18,
                fontWeight: fontWeightRegular,
                color: mainColor,
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                widget.pageController.jumpToPage(0);
              },
              child: Container(
                width: 46,
                height: 46,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  CupertinoIcons.arrow_left,
                  color: blackColor,
                ),
              ),
            ),
          ),
          body: ListView(
            children: [
              const SizedBox(
                height: 5,
              ),
              // DropDownCard(
              //   cards: state.cards ?? [],
              //   onCardSelect: _cubit.setCard,
              //   fillColor: state.invalidInput ? redColor : whiteColor,
              // ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Input(
                  textController: _nameController,
                  margin: false,
                  title: "Task Name",
                  hintText: "Name of this task!",
                  fillColor: state.invalidInput ? redColor : whiteColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Input(
                  textController: _desController,
                  margin: false,
                  title: "Task Descroption",
                  hintText: "Descroption of this task!",
                  fillColor: state.invalidInput ? redColor : whiteColor,
                ),
              ),
              // PickDate(
              //   onDateSelected: _cubit.setDate,
              //   fillColor: state.invalidInput ? redColor : whiteColor,
              // ),
              PickTime(
                title: "Time Start",
                onTimeSelected: _cubit.setTimeStart,
                fillColor: state.invalidInput ? redColor : whiteColor,
              ),
              PickTime(
                title: "Time End",
                onTimeSelected: _cubit.setTimeEnd,
                fillColor: state.invalidInput ? redColor : whiteColor,
              ),
              InkWell(
                onTap: () async {
                  TaskEntity? task = await _cubit.addTask(
                    widget.userID,
                    widget.cardID,
                    _nameController.text.trim(),
                    _desController.text.trim(),
                  );
                  if (task != null) {
                    widget.pageController.jumpToPage(0);
                  }
                },
                child: Container(
                  height: 46,
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                    "Create Task",
                    style:
                        TextStyle(fontSize: 16, fontWeight: fontWeightMedium),
                  )),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomBar(controller: widget.pageController),
        );
      }),
    );
  }
}
