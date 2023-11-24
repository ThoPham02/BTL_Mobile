import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/widgets/bar/appbar_button.dart';

class AppBarDefault extends StatelessWidget {
  const AppBarDefault({super.key});

  void handleBellButtonPress() {}

  void handleUserButtonPress() {}

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(""),
      leading: const AppBarButton(),
      actions: <Widget>[
        IconButton(
            onPressed: handleBellButtonPress,
            icon: const Icon(
              CupertinoIcons.waveform_path_ecg,
            )),
        IconButton(
            onPressed: handleUserButtonPress,
            icon: const Icon(
              CupertinoIcons.waveform_path_ecg,
            )),
      ],
    );
  }
}
