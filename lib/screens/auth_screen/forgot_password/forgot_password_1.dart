import 'package:flutter/cupertino.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/screens/auth_screen/widgets/input.dart';

class ForgotPassword1 extends StatefulWidget {
  const ForgotPassword1({
    super.key,
    required this.controller,
    required this.textController,
    required this.setForgotState,
  });

  final PageController controller;
  final TextEditingController textController;
  final Function(bool) setForgotState;

  @override
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {
  bool inputErr = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 25, 15, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Forgot Password",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
          ),
          const Text(
            "Enter your email we will send 5 digits verification code",
            style: TextStyle(
                fontSize: 15,
                fontWeight: fontWeightRegular,
                color: blackColor50),
          ),
          const SizedBox(height: 30),
          Input(
            textController: widget.textController,
            title: "E-mail",
            hintText: "Enter your e-mail",
            fillColor: inputErr ? redColor20 : blackColor5,
            margin: false,
          ),
          const Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  widget.setForgotState(false);
                },
                child: Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Close",
                      style: TextStyle(color: mainColor),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (widget.textController.text.trim().isNotEmpty) {
                    widget.controller.jumpToPage(1);
                  } else {
                    setState(() {
                      inputErr = true;
                    });
                  }
                },
                child: Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    CupertinoIcons.arrow_right,
                    color: whiteColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
