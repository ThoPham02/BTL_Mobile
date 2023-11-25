import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: whiteColor,
                width: double.infinity,
                height: double.infinity,
                child: Stack(children: [
                  SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IntrinsicHeight(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: blueColor,
                              width: 1,
                            ),
                            color: whiteColor,
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x44c4c4c4),
                                blurRadius: 50,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.only(top: 54, bottom: 7),
                          margin: const EdgeInsets.only(top: 454),
                          width: double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 25, left: 82, right: 82),
                                  child: const Text(
                                    'Manage your activity',
                                    style: TextStyle(
                                      color: Color(0xFF303030),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 71, left: 28, right: 28),
                                  width: double.infinity,
                                  child: const Text(
                                    'Manage the progress of the tasks completion\ntrack the time and analyze tha stats',
                                    style: TextStyle(
                                      color: Color(0xFF303030),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xFFf26950),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x26f26950),
                                          blurRadius: 50,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 21),
                                    margin: const EdgeInsets.only(
                                        bottom: 35, left: 25, right: 25),
                                    width: double.infinity,
                                    child: const Column(children: [
                                      Text(
                                        'Next',
                                        style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 41, left: 161, right: 161),
                                    width: double.infinity,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IntrinsicHeight(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xFFf26950),
                                              ),
                                              width: 28,
                                              child: const SizedBox(),
                                            ),
                                          ),
                                          SizedBox(
                                              width: 9,
                                              height: 9,
                                              child: Image.network(
                                                'https://i.imgur.com/1tMFzp8.png',
                                                fit: BoxFit.fill,
                                              )),
                                        ]),
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: const Color(0xCC303030),
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 120),
                                    width: double.infinity,
                                    child: const SizedBox(),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  )),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
