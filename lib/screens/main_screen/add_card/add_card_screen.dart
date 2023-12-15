// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/models/card_entity.dart';
import 'package:task_management/screens/auth_screen/widgets/input.dart';
import 'package:task_management/screens/main_screen/widgets/bottom_bar.dart';
import 'package:task_management/services/fire_storage_service.dart';
import 'package:task_management/utils/genid.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({
    super.key,
    required this.pageController,
    required this.userID,
  });

  final PageController pageController;
  final String userID;

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final TextEditingController _nameController = TextEditingController();
  final FireStorageService _firestore = FireStorageService();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: whiteColor,
        elevation: 0.0,
        title: const Text(
          "Add Your Group Task",
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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Input(
              textController: _nameController,
              margin: false,
              title: "Group Task Name",
              hintText: "Name of group task!",
            ),
          ),
          InkWell(
            onTap: _handleCreateCard,
            child: Container(
              height: 46,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                  child: Text(
                "Create Group Task",
                style: TextStyle(fontSize: 16, fontWeight: fontWeightMedium),
              )),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBar(controller: widget.pageController),
    );
  }

  _handleCreateCard() async {
    CardEntity? card = await _firestore.createCard(
        widget.userID,
        CardEntity(
          cardID: genID(),
          name: _nameController.text.trim(),
          iconPath: "assets/vectors/smartphone.svg",
          bgPath: "assets/vectors/card_background1.svg",
          numTask: 0,
        ));
    if (card != null) {
      widget.pageController.jumpToPage(0);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Tạo nhóm công việc thất bại!!")));
    }
  }
}
