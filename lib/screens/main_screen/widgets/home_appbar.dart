import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/constants/style.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key, this.setDrawState});

  final Function? setDrawState;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {
          setDrawState!();
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
}
