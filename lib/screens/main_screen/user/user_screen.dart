// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/screens/main_screen/mainhome/notification/notification_screen.dart';
import 'package:task_management/screens/main_screen/user/user_detail.dart';
import 'package:task_management/screens/main_screen/widgets/bottom_bar.dart';
import 'package:task_management/screens/main_screen/widgets/user_category.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({
    super.key,
    required this.pageController,
    required this.userInfo,
  });

  final PageController pageController;
  final UserEntity userInfo;

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        _userScreen(_controller),
        UserDetail(
          user: widget.userInfo,
          pageController: _controller,
        ),
      ],
    );
  }

  Scaffold _userScreen(PageController pageController) {
    return Scaffold(
      backgroundColor: blackColor5NoOpa,
      body: Column(
        children: [
          const SizedBox(height: 40),
          _userHeader(pageController),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: [
                  const Text(
                    "General",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: fontWeightRegular,
                      color: blackColor50,
                    ),
                  ),
                  UserCategory(
                    color: greenColor,
                    categoryIcon:
                        SvgPicture.asset("assets/vectors/user_icon.svg"),
                    title: "Manage Account",
                    subIcon: CupertinoIcons.chevron_right,
                    controller: pageController,
                  ),
                  UserCategory(
                    color: yellowColor,
                    categoryIcon:
                        SvgPicture.asset("assets/vectors/bell_icon.svg"),
                    title: "Notification",
                    subIcon: CupertinoIcons.chevron_right,
                  ),
                  UserCategory(
                    color: pupleColor,
                    categoryIcon:
                        SvgPicture.asset("assets/vectors/vip_icon.svg"),
                    title: "Become An VIP User",
                    subIcon: CupertinoIcons.chevron_right,
                  ),
                  UserCategory(
                    color: redColor,
                    categoryIcon:
                        SvgPicture.asset("assets/vectors/logout_icon.svg"),
                    title: "Logout",
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "General",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: fontWeightRegular,
                      color: blackColor50,
                    ),
                  ),
                  UserCategory(
                      color: greenColor,
                      categoryIcon: SvgPicture.asset(
                          "assets/vectors/headphones_icon.svg"),
                      title: "Help Center",
                      subIcon: CupertinoIcons.chevron_right),
                  UserCategory(
                    color: blueColor,
                    categoryIcon:
                        SvgPicture.asset("assets/vectors/alert_icon.svg"),
                    title: "About Us",
                    subIcon: CupertinoIcons.chevron_right,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBar(controller: widget.pageController),
    );
  }

  Container _userHeader(PageController pageController) {
    return Container(
      margin: const EdgeInsets.all(30),
      height: 85,
      child: Row(
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
          const SizedBox(width: 25),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.userInfo.name}",
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: fontWeightMedium,
                        fontFamily: "Poppins",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.jumpToPage(1);
                      },
                      child: const Icon(CupertinoIcons.chevron_right),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
