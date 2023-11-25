import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

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
                color: const Color(0xFF86c19a),
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntrinsicHeight(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 34),
                        width: double.infinity,
                        child: Stack(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IntrinsicHeight(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                        begin: Alignment(0, -1),
                                        end: Alignment(0, 0.9999999999999998),
                                        colors: [
                                          Color(0x08ffffff),
                                          Color(0x12ffffff),
                                        ],
                                      ),
                                    ),
                                    width: double.infinity,
                                    child: const SizedBox(),
                                  ),
                                ),
                              ]),
                          Positioned(
                            top: 0,
                            left: 0,
                            width: 277,
                            height: 277,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 0.9999999999999998),
                                  colors: [
                                    Color(0x08ffffff),
                                    Color(0x12ffffff),
                                  ],
                                ),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 25, right: 25),
                              width: 277,
                              height: 277,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 17, bottom: 41),
                                      child: const Text(
                                        '9:41',
                                        style: TextStyle(
                                          color: Color(0xFFffffff),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 39),
                                        width: 20,
                                        height: 14,
                                        child: Image.network(
                                          'https://i.imgur.com/1tMFzp8.png',
                                          fit: BoxFit.fill,
                                        )),
                                    const SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Type your\nTitle',
                                        style: TextStyle(
                                          color: Color(0xFFffffff),
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          Positioned(
                            top: 228.099853515625,
                            left: 25.1845703125,
                            width: 70,
                            height: 98,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFffffff),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 22, right: 22),
                              width: 70,
                              height: 98,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 31, bottom: 6),
                                      child: const Text(
                                        '10',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Sun',
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          Positioned(
                            top: 219.099853515625,
                            left: 103.1845703125,
                            width: 76,
                            height: 111,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFF9bd3b0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xFF52a06e),
                                    blurRadius: 58,
                                    offset: Offset(0, 12),
                                  ),
                                ],
                              ),
                              padding:
                                  const EdgeInsets.only(left: 24, right: 24),
                              width: 76,
                              height: 111,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 31, bottom: 5),
                                      child: const Text(
                                        '11',
                                        style: TextStyle(
                                          color: Color(0xFFffffff),
                                          fontSize: 23,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Dec',
                                      style: TextStyle(
                                        color: Color(0xFFffffff),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 105.1025390625,
                            width: 277,
                            height: 277,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 0.9999999999999998),
                                  colors: [
                                    Color(0x08ffffff),
                                    Color(0x12ffffff),
                                  ],
                                ),
                              ),
                              width: 277,
                              height: 277,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IntrinsicHeight(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 17,
                                            bottom: 41,
                                            left: 21,
                                            right: 21),
                                        width: double.infinity,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                  width: 17,
                                                  height: 10,
                                                  child: Image.network(
                                                    'https://i.imgur.com/1tMFzp8.png',
                                                    fit: BoxFit.fill,
                                                  )),
                                              SizedBox(
                                                  width: 15,
                                                  height: 11,
                                                  child: Image.network(
                                                    'https://i.imgur.com/1tMFzp8.png',
                                                    fit: BoxFit.fill,
                                                  )),
                                              IntrinsicHeight(
                                                child: Container(
                                                  width: 24,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            "https://i.imgur.com/1tMFzp8.png"),
                                                        fit: BoxFit.cover),
                                                  ),
                                                  child: Column(children: [
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  1.600000023841858),
                                                          color: const Color(
                                                              0xFFffffff),
                                                        ),
                                                        margin: const EdgeInsets
                                                            .only(top: 1),
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
                                    Expanded(
                                      child: Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 42, left: 34, right: 34),
                                          height: 20,
                                          width: double.infinity,
                                          child: Image.network(
                                            'https://i.imgur.com/1tMFzp8.png',
                                            fit: BoxFit.fill,
                                          )),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 36),
                                      child: const Text(
                                        '11 Dec, 2020',
                                        style: TextStyle(
                                          color: Color(0xFFffffff),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          Positioned(
                            top: 225.099853515625,
                            left: 187.1845703125,
                            width: 70,
                            height: 98,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFffffff),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 22, right: 22),
                              width: 70,
                              height: 98,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 31, bottom: 6),
                                      child: const Text(
                                        '12',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Tue',
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          Positioned(
                            top: 225.099853515625,
                            left: 265.1845703125,
                            width: 70,
                            height: 98,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFffffff),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 19, right: 19),
                              width: 70,
                              height: 98,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 31, bottom: 6),
                                      child: const Text(
                                        '13',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Wed',
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          Positioned(
                            top: 225.099853515625,
                            left: 343.1845703125,
                            width: 70,
                            height: 98,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFffffff),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 19, right: 19),
                              width: 70,
                              height: 98,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 31, bottom: 5),
                                      child: const Text(
                                        '14',
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Thur',
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
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
                          border: Border.all(
                            color: const Color(0xFF5E27FD),
                            width: 1,
                          ),
                          color: const Color(0xFFffffff),
                        ),
                        padding: const EdgeInsets.only(top: 37),
                        width: double.infinity,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IntrinsicHeight(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 40, left: 25, right: 25),
                                  width: double.infinity,
                                  child: Stack(children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IntrinsicHeight(
                                            child: SizedBox(
                                              width: 38,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              bottom: 40),
                                                      child: const Text(
                                                        '09:00',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF303030),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    const Text(
                                                      '10:00',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF303030),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                          IntrinsicHeight(
                                            child: SizedBox(
                                              width: 259,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        color: const Color(
                                                            0xFF303030),
                                                        margin: const EdgeInsets
                                                            .only(bottom: 53),
                                                        width: double.infinity,
                                                        child: const SizedBox(),
                                                      ),
                                                    ),
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        color: const Color(
                                                            0xFF303030),
                                                        width: double.infinity,
                                                        child: const SizedBox(),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ]),
                                    Positioned(
                                      top: 4.0411376953125,
                                      left: 62.6884765625,
                                      width: 259,
                                      height: 65,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0x1A87c19b),
                                        ),
                                        padding: const EdgeInsets.only(
                                            left: 18, right: 18),
                                        width: 259,
                                        height: 65,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              IntrinsicHeight(
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 16),
                                                  width: double.infinity,
                                                  child: Row(children: [
                                                    Container(
                                                        margin: const EdgeInsets
                                                            .only(right: 17),
                                                        width: 3,
                                                        height: 32,
                                                        child: Image.network(
                                                          'https://i.imgur.com/1tMFzp8.png',
                                                          fit: BoxFit.fill,
                                                        )),
                                                    Expanded(
                                                      child: IntrinsicHeight(
                                                        child: SizedBox(
                                                          width:
                                                              double.infinity,
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          bottom:
                                                                              6),
                                                                  child:
                                                                      const Text(
                                                                    'Meeting With Client',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF303030),
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ),
                                                                const Text(
                                                                  '09:00 - 10:15',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF303030),
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ]),
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
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
                                  margin: const EdgeInsets.only(
                                      bottom: 40, left: 25, right: 25),
                                  width: double.infinity,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const IntrinsicHeight(
                                          child: Text(
                                            '11:00',
                                            style: TextStyle(
                                              color: Color(0xFF303030),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            color: const Color(0xFF303030),
                                            width: 259,
                                            child: const SizedBox(),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              IntrinsicHeight(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 40, left: 25, right: 25),
                                  width: double.infinity,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const IntrinsicHeight(
                                          child: Text(
                                            '12:00',
                                            style: TextStyle(
                                              color: Color(0xFF303030),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            color: const Color(0xFF303030),
                                            width: 259,
                                            child: const SizedBox(),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              IntrinsicHeight(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 40, left: 25, right: 25),
                                  width: double.infinity,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const IntrinsicHeight(
                                          child: Text(
                                            '01:00',
                                            style: TextStyle(
                                              color: Color(0xFF303030),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            color: const Color(0xFF303030),
                                            width: 259,
                                            child: const SizedBox(),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              IntrinsicHeight(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 43, left: 25, right: 25),
                                  width: double.infinity,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const IntrinsicHeight(
                                          child: Text(
                                            '02:00',
                                            style: TextStyle(
                                              color: Color(0xFF303030),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            color: const Color(0xFF303030),
                                            width: 259,
                                            child: const SizedBox(),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              IntrinsicHeight(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFffffff),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x0c303030),
                                        blurRadius: 50,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  width: double.infinity,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        IntrinsicHeight(
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 3, left: 61, right: 61),
                                            width: double.infinity,
                                            child: Stack(children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                        width: 18,
                                                        height: 20,
                                                        child: Image.network(
                                                          'https://i.imgur.com/1tMFzp8.png',
                                                          fit: BoxFit.fill,
                                                        )),
                                                    SizedBox(
                                                        width: 20,
                                                        height: 18,
                                                        child: Image.network(
                                                          'https://i.imgur.com/1tMFzp8.png',
                                                          fit: BoxFit.fill,
                                                        )),
                                                    IntrinsicHeight(
                                                      child: SizedBox(
                                                        width: 16,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                        margin: const EdgeInsets
                                                                            .only(
                                                                            bottom:
                                                                                4,
                                                                            left:
                                                                                4,
                                                                            right:
                                                                                4),
                                                                        height:
                                                                            8,
                                                                        width: double
                                                                            .infinity,
                                                                        child: Image
                                                                            .network(
                                                                          'https://i.imgur.com/1tMFzp8.png',
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        )),
                                                              ),
                                                              Expanded(
                                                                child: SizedBox(
                                                                    height: 6,
                                                                    width: double
                                                                        .infinity,
                                                                    child: Image
                                                                        .network(
                                                                      'https://i.imgur.com/1tMFzp8.png',
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    )),
                                                              ),
                                                            ]),
                                                      ),
                                                    ),
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: const Color(
                                                              0x66f26950),
                                                        ),
                                                        width: 40,
                                                        child: const SizedBox(),
                                                      ),
                                                    ),
                                                  ]),
                                              Positioned(
                                                top: 0,
                                                left: 203.62890625,
                                                width: 46,
                                                height: 46,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color:
                                                        const Color(0xFFf26950),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 16, right: 16),
                                                  width: 46,
                                                  height: 46,
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        IntrinsicHeight(
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 16),
                                                            width:
                                                                double.infinity,
                                                            child: Stack(
                                                                children: [
                                                                  Column(
                                                                      children: [
                                                                        Expanded(
                                                                          child: Container(
                                                                              margin: const EdgeInsets.symmetric(horizontal: 6),
                                                                              height: 14,
                                                                              width: double.infinity,
                                                                              child: Image.network(
                                                                                'https://i.imgur.com/1tMFzp8.png',
                                                                                fit: BoxFit.fill,
                                                                              )),
                                                                        ),
                                                                      ]),
                                                                  Positioned(
                                                                    top: 7,
                                                                    left: 0,
                                                                    width: 14,
                                                                    height: 1,
                                                                    child: SizedBox(
                                                                        width: 14,
                                                                        height: 1,
                                                                        child: Image.network(
                                                                          'https://i.imgur.com/1tMFzp8.png',
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        )),
                                                                  ),
                                                                ]),
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
                                              borderRadius:
                                                  BorderRadius.circular(100),
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
