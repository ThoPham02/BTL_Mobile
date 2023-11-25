import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color(0xFFFFFFFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: const Color(0xFFfafafa),
                padding: const EdgeInsets.only(top: 17),
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntrinsicHeight(
                      child: Container(
                        margin: const EdgeInsets.only(
                            bottom: 19, left: 13, right: 13),
                        width: double.infinity,
                        child: Row(children: [
                          Expanded(
                            child: IntrinsicHeight(
                              child: Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: const Text(
                                  '9:41',
                                  style: TextStyle(
                                    color: Color(0xFF252729),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 17,
                              height: 10,
                              child: Image.network(
                                'https://i.imgur.com/1tMFzp8.png',
                                fit: BoxFit.fill,
                              )),
                          Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 15,
                              height: 11,
                              child: Image.network(
                                'https://i.imgur.com/1tMFzp8.png',
                                fit: BoxFit.fill,
                              )),
                          IntrinsicHeight(
                            child: Container(
                              width: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.imgur.com/1tMFzp8.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(children: [
                                IntrinsicHeight(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          1.600000023841858),
                                      color: const Color(0xFF252729),
                                    ),
                                    margin: const EdgeInsets.only(top: 1),
                                    width: double.infinity,
                                    child: const SizedBox(),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 32, left: 169, right: 169),
                      child: const Text(
                        'Today',
                        style: TextStyle(
                          color: Color(0xFF252729),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Color(0xFFd1ffe1),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3febebeb),
                              blurRadius: 30,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(
                            top: 18, bottom: 18, left: 17, right: 17),
                        margin: const EdgeInsets.only(
                            bottom: 10, left: 24, right: 24),
                        width: double.infinity,
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Meeting with client\n09:00 - 10:15\nPressentation user flow',
                                  style: TextStyle(
                                    color: Color(0xFF252729),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 512, left: 26, right: 26),
                      child: const Text(
                        '09:20',
                        style: TextStyle(
                          color: Color(0xFF252729),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          color: Color(0xFFffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x26909090),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 25, bottom: 8),
                        width: double.infinity,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IntrinsicHeight(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 13, left: 21, right: 21),
                                  width: double.infinity,
                                  child: Stack(children: [
                                    Row(children: [
                                      IntrinsicHeight(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              top: 7,
                                              bottom: 7,
                                              left: 6,
                                              right: 6),
                                          margin:
                                              const EdgeInsets.only(right: 13),
                                          width: 20,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://i.imgur.com/1tMFzp8.png"),
                                                fit: BoxFit.cover),
                                          ),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                IntrinsicHeight(
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 3),
                                                    width: double.infinity,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          IntrinsicHeight(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: const Color(
                                                                      0xFFa8a9a9),
                                                                  width: 2,
                                                                ),
                                                              ),
                                                              width: 2,
                                                              child:
                                                                  const SizedBox(),
                                                            ),
                                                          ),
                                                          IntrinsicHeight(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: const Color(
                                                                      0xFFa8a9a9),
                                                                  width: 2,
                                                                ),
                                                              ),
                                                              width: 2,
                                                              child:
                                                                  const SizedBox(),
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SizedBox(
                                                      height: 2,
                                                      width: double.infinity,
                                                      child: Image.network(
                                                        'https://i.imgur.com/1tMFzp8.png',
                                                        fit: BoxFit.fill,
                                                      )),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      const IntrinsicHeight(
                                        child: Text(
                                          'Type your message...',
                                          style: TextStyle(
                                            color: Color(0xFF252729),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Expanded(
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: SizedBox(),
                                        ),
                                      ),
                                      SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: Image.network(
                                            'https://i.imgur.com/1tMFzp8.png',
                                            fit: BoxFit.fill,
                                          )),
                                    ]),
                                    Positioned(
                                      top: 2.329345703125,
                                      left: 316.1357421875,
                                      width: 13,
                                      height: 13,
                                      child: SizedBox(
                                          width: 13,
                                          height: 13,
                                          child: Image.network(
                                            'https://i.imgur.com/1tMFzp8.png',
                                            fit: BoxFit.fill,
                                          )),
                                    ),
                                  ]),
                                ),
                              ),
                              IntrinsicHeight(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xFF000000),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
