import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntrinsicHeight(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF5E27FD),
                            width: 1,
                          ),
                          color: const Color(0xFFffffff),
                        ),
                        padding: const EdgeInsets.only(top: 17, bottom: 1),
                        margin: const EdgeInsets.only(bottom: 48),
                        width: double.infinity,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IntrinsicHeight(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 65, left: 15, right: 15),
                                  width: double.infinity,
                                  child: Row(children: [
                                    SizedBox(
                                        width: 24,
                                        height: 10,
                                        child: Image.network(
                                          'https://i.imgur.com/1tMFzp8.png',
                                          fit: BoxFit.fill,
                                        )),
                                    const Expanded(
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: SizedBox(),
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
                                        height: 10,
                                        child: Image.network(
                                          'https://i.imgur.com/1tMFzp8.png',
                                          fit: BoxFit.fill,
                                        )),
                                    IntrinsicHeight(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFF000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              2.6666667461395264),
                                        ),
                                        margin: const EdgeInsets.only(right: 1),
                                        width: 22,
                                        child: Column(children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      1.3333333730697632),
                                              color: const Color(0xFF000000),
                                            ),
                                            margin:
                                                const EdgeInsets.only(top: 2),
                                            height: 7,
                                            width: double.infinity,
                                            child: const SizedBox(),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Container(
                                      color: const Color(0xFF000000),
                                      width: 1,
                                      height: 4,
                                      child: const SizedBox(),
                                    ),
                                  ]),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    bottom: 70, left: 142, right: 142),
                                child: const Text(
                                  'Tasky .',
                                  style: TextStyle(
                                    color: Color(0xFFf26950),
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              IntrinsicHeight(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 16, left: 60, right: 60),
                                  width: double.infinity,
                                  child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Log In',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              Container(
                                color: const Color(0xFFf26950),
                                height: 3,
                                width: double.infinity,
                                child: const SizedBox(),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 22, left: 25, right: 25),
                      child: const Text(
                        'Username or E-mail',
                        style: TextStyle(
                          color: Color(0xFF303030),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFffffff),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19929292),
                              blurRadius: 75,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(
                            top: 22, bottom: 22, left: 21, right: 21),
                        margin: const EdgeInsets.only(
                            bottom: 39, left: 25, right: 25),
                        width: double.infinity,
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enter your username or E-mail',
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 22, left: 26, right: 26),
                      child: const Text(
                        'E-mail',
                        style: TextStyle(
                          color: Color(0xFF303030),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFffffff),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19929292),
                              blurRadius: 75,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(
                            top: 22, bottom: 22, left: 21, right: 21),
                        margin: const EdgeInsets.only(
                            bottom: 39, left: 25, right: 25),
                        width: double.infinity,
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enter your e-mail',
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 21, left: 26, right: 26),
                      child: const Text(
                        'Password',
                        style: TextStyle(
                          color: Color(0xFF303030),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFffffff),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19929292),
                              blurRadius: 75,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(
                            bottom: 42, left: 25, right: 25),
                        width: double.infinity,
                        child: Row(children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 4),
                              width: double.infinity,
                              child: const Text(
                                'Create your password',
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              width: 22,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.imgur.com/1tMFzp8.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(children: [
                                Expanded(
                                  child: Container(
                                      margin: const EdgeInsets.only(top: 5),
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
                        ]),
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
                        padding: const EdgeInsets.symmetric(vertical: 21),
                        margin: const EdgeInsets.only(
                            bottom: 62, left: 25, right: 25),
                        width: double.infinity,
                        child: const Column(children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              color: Color(0xFFffffff),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFF000000),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 120),
                      height: 5,
                      width: double.infinity,
                      child: const SizedBox(),
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
