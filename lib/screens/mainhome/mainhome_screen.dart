import 'package:flutter/material.dart';
import 'package:task_management/constants/icons.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/widgets/bar/appbar_button.dart';

class MainhomeScreen extends StatelessWidget {
  const MainhomeScreen({super.key});

  void handleBellButtonPress() {}

  void handleUserButtonPress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        leading: const AppBarButton(),
        actions: <Widget>[
          IconButton(onPressed: handleBellButtonPress, icon: bellIcon),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Hello, ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: 'Jessie',
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Complete your tasks today",
                    style: TextStyle(
                      fontWeight: fontWeightMedium,
                      fontSize: 20,
                      fontFamily: mainFontFamily
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
