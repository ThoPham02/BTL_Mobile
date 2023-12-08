import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/models/user_entity.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor5NoOpa,
      body: Column(
        children: [
          const SizedBox(height: 40),
          _userHeader(),
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

  Container _userHeader() {
    return Container(
      margin: const EdgeInsets.all(30),
      height: 85,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            clipBehavior: Clip.none,
            child: Image.asset(
              "assets/images/avatar.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 25),
          Text(
            "${widget.userInfo.name}",
            style: const TextStyle(
              fontSize: 21,
              fontWeight: fontWeightMedium,
              fontFamily: "Poppins",
            ),
          )
        ],
      ),
    );
  }
}
