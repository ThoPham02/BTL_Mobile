// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/screens/auth_screen/widgets/input.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({super.key, required this.user, this.pageController});

  final UserEntity user;
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            try {
              pageController?.jumpToPage(0);
            } catch (e) {
              Navigator.pop(context);
            }
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
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 85,
                  height: 85,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/avatar.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "${user.name}",
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: fontWeightMedium,
                    fontFamily: "Poppins",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/vectors/vip_icon.svg",
                      color: mainColor,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Vip User",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: fontWeightRegular,
                          fontFamily: "Poppins",
                          color: mainColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: blackColor5,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(children: [
                Input(
                  textController: TextEditingController(text: user.name),
                  title: "Display Name",
                  enabled: false,
                ),
                Input(
                  textController: TextEditingController(text: user.name),
                  title: "Username",
                  enabled: false,
                ),
                Input(
                  textController: TextEditingController(text: user.email),
                  title: "Email",
                  enabled: false,
                ),
                Input(
                  textController: TextEditingController(text: user.password),
                  title: "Password",
                  typePassword: true,
                  enabled: false,
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
