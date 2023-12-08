import 'package:flutter/cupertino.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/screens/auth_screen/widgets/input.dart';

class ForgotPassword3 extends StatefulWidget {
  const ForgotPassword3({
    super.key,
    required this.textController,
    required this.setForgotState,
    required this.updatePassword,
  });

  final TextEditingController textController;
  final Function(bool) setForgotState;
  final Function updatePassword;

  @override
  State<ForgotPassword3> createState() => _ForgotPassword3State();
}

class _ForgotPassword3State extends State<ForgotPassword3> {
  bool inputErr = false;
  final repeatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 25, 15, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Input(
            textController: widget.textController,
            title: "New Password",
            hintText: "Enter your new password",
            fillColor: blackColor5,
            margin: false,
            typePassword: true,
          ),
          const SizedBox(height: 25),
          Input(
            textController: repeatController,
            title: "Repeat Password",
            hintText: "Enter your new password",
            fillColor: blackColor5,
            margin: false,
            typePassword: true,
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
                  if (widget.textController.text.trim() ==
                      repeatController.text.trim()) {
                    widget.updatePassword();
                  } else {
                    widget.textController.text = "";
                    repeatController.text = "";
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
