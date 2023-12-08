// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';

class UserCategory extends StatelessWidget {
  const UserCategory({
    super.key,
    required this.color,
    required this.categoryIcon,
    required this.title,
    this.subIcon,
    this.controller,
  });

  final Color color;
  final Widget categoryIcon;
  final String title;
  final IconData? subIcon;
  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: () {
          controller?.jumpToPage(1);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 46,
              height: 46,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
              child: categoryIcon,
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: fontWeightMedium,
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                subIcon,
                color: blackColor50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
