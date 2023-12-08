import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/constants/style.dart';

class Input extends StatefulWidget {
  const Input(
      {super.key,
      this.title = "",
      this.hintText = "",
      required this.textController,
      this.typePassword = false,
      this.fillColor = whiteColor,
      this.margin = true});

  final String title;
  final String hintText;
  final TextEditingController textController;
  final bool typePassword;
  final Color fillColor;
  final bool margin;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool hindenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: widget.margin
          ? const EdgeInsets.only(left: 25, right: 25, top: 30)
          : const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: fontWeightMedium,
            ),
          ),
          const SizedBox(height: 10),
          widget.typePassword
              ? TextField(
                  controller: widget.textController,
                  obscureText: hindenPassword,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: fontWeightRegular,
                      color: blackColor50,
                    ),
                    filled: true,
                    fillColor: widget.fillColor,
                    contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          hindenPassword = !hindenPassword;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(hindenPassword
                            ? "assets/vectors/eye_off.svg"
                            : "assets/vectors/eye.svg"),
                      ),
                    ),
                  ),
                )
              : TextField(
                  controller: widget.textController,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: fontWeightRegular,
                      color: blackColor50,
                    ),
                    filled: true,
                    fillColor: widget.fillColor,
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
