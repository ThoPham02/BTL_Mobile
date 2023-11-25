import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
                color: const Color(0xFFffffff),
                padding: const EdgeInsets.symmetric(vertical: 17),
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntrinsicHeight(
                      child: Container(
                        margin: const EdgeInsets.only(
                            bottom: 25, left: 14, right: 14),
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
                    IntrinsicHeight(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFfafafa),
                        ),
                        margin: const EdgeInsets.only(
                            bottom: 14, left: 24, right: 24),
                        width: double.infinity,
                        child: Column(children: [
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(top: 16),
                                height: 14,
                                width: double.infinity,
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
                        color: const Color(0xFFffffff),
                        padding: const EdgeInsets.only(
                            top: 22, bottom: 22, left: 37, right: 37),
                        width: double.infinity,
                        child: Row(children: [
                          IntrinsicHeight(
                            child: Container(
                              margin: const EdgeInsets.only(right: 34),
                              width: 20,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.imgur.com/1tMFzp8.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(children: [
                                Expanded(
                                  child: Container(
                                      margin: const EdgeInsets.only(top: 6),
                                      height: 6,
                                      width: double.infinity,
                                      child: Image.network(
                                        'https://i.imgur.com/1tMFzp8.png',
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ]),
                            ),
                          ),
                          Expanded(
                            child: IntrinsicHeight(
                              child: Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 7),
                                        child: const Text(
                                          'Create New Features',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Completed',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        color: const Color(0xFFffffff),
                        padding: const EdgeInsets.only(
                            top: 21, bottom: 21, left: 37, right: 37),
                        width: double.infinity,
                        child: Row(children: [
                          IntrinsicHeight(
                            child: Container(
                              margin: const EdgeInsets.only(right: 35),
                              width: 20,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.imgur.com/1tMFzp8.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(children: [
                                Expanded(
                                  child: Container(
                                      margin: const EdgeInsets.only(top: 6),
                                      height: 6,
                                      width: double.infinity,
                                      child: Image.network(
                                        'https://i.imgur.com/1tMFzp8.png',
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ]),
                            ),
                          ),
                          Expanded(
                            child: IntrinsicHeight(
                              child: Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 8),
                                        child: const Text(
                                          'Interview User Flow',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Completed',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        color: const Color(0xFFffffff),
                        padding: const EdgeInsets.only(
                            top: 21, bottom: 21, left: 37, right: 37),
                        width: double.infinity,
                        child: Row(children: [
                          IntrinsicHeight(
                            child: Container(
                              margin: const EdgeInsets.only(right: 35),
                              width: 20,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.imgur.com/1tMFzp8.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(children: [
                                Expanded(
                                  child: Container(
                                      margin: const EdgeInsets.only(top: 6),
                                      height: 6,
                                      width: double.infinity,
                                      child: Image.network(
                                        'https://i.imgur.com/1tMFzp8.png',
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ]),
                            ),
                          ),
                          Expanded(
                            child: IntrinsicHeight(
                              child: Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 8),
                                        child: const Text(
                                          'Meeting With Client',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Completed',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        color: const Color(0xFFffffff),
                        padding: const EdgeInsets.only(
                            top: 21, bottom: 21, left: 37, right: 37),
                        width: double.infinity,
                        child: Row(children: [
                          Container(
                              margin: const EdgeInsets.only(right: 33),
                              width: 20,
                              height: 20,
                              child: Image.network(
                                'https://i.imgur.com/1tMFzp8.png',
                                fit: BoxFit.fill,
                              )),
                          Expanded(
                            child: IntrinsicHeight(
                              child: Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 7),
                                        child: const Text(
                                          'Go to Supermarket',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 1),
                                        child: const Text(
                                          'Failed',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        color: const Color(0xFFffffff),
                        padding: const EdgeInsets.only(
                            top: 21, bottom: 21, left: 37, right: 37),
                        width: double.infinity,
                        child: Row(children: [
                          IntrinsicHeight(
                            child: Container(
                              margin: const EdgeInsets.only(right: 35),
                              width: 20,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.imgur.com/1tMFzp8.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(children: [
                                Expanded(
                                  child: Container(
                                      margin: const EdgeInsets.only(top: 6),
                                      height: 6,
                                      width: double.infinity,
                                      child: Image.network(
                                        'https://i.imgur.com/1tMFzp8.png',
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ]),
                            ),
                          ),
                          Expanded(
                            child: IntrinsicHeight(
                              child: Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 8),
                                        child: const Text(
                                          'Meeting With Team',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Completed',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        color: const Color(0xFFffffff),
                        padding: const EdgeInsets.only(
                            top: 21, bottom: 21, left: 37, right: 37),
                        width: double.infinity,
                        child: Row(children: [
                          Container(
                              margin: const EdgeInsets.only(right: 34),
                              width: 20,
                              height: 20,
                              child: Image.network(
                                'https://i.imgur.com/1tMFzp8.png',
                                fit: BoxFit.fill,
                              )),
                          Expanded(
                            child: IntrinsicHeight(
                              child: Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 7),
                                        child: const Text(
                                          'Update Trello',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Failed',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        color: const Color(0xFFffffff),
                        padding: const EdgeInsets.only(
                            top: 21, bottom: 21, left: 37, right: 37),
                        margin: const EdgeInsets.only(bottom: 158),
                        width: double.infinity,
                        child: Row(children: [
                          IntrinsicHeight(
                            child: Container(
                              margin: const EdgeInsets.only(right: 35),
                              width: 20,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.imgur.com/1tMFzp8.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(children: [
                                Expanded(
                                  child: Container(
                                      margin: const EdgeInsets.only(top: 6),
                                      height: 6,
                                      width: double.infinity,
                                      child: Image.network(
                                        'https://i.imgur.com/1tMFzp8.png',
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ]),
                            ),
                          ),
                          Expanded(
                            child: IntrinsicHeight(
                              child: Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 8),
                                        child: const Text(
                                          'Find Best Feature',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Completed',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                              width: 2,
                              child: const SizedBox(),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xCC303030),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 120),
                        width: double.infinity,
                        child: const SizedBox(),
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
