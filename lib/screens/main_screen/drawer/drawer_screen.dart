import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/screens/main_screen/drawer/log_out_service.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen(
      {super.key, required this.userInfo, required this.setDrawState});

  final UserEntity userInfo;
  final Function setDrawState;

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0E1F53),
      padding: const EdgeInsets.only(top: 72, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              widget.setDrawState();
            },
            icon: SvgPicture.asset('assets/vectors/icon_back.svg'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 30),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/avatar.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Jessie Yaegar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Indonesia',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              const ListTile(
                title: Text('Manage Account',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: Icon(Icons.person,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              const SizedBox(height: 10),
              const ListTile(
                title: Text('Search Tasks',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: Icon(Icons.search,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              const SizedBox(height: 10),
              const ListTile(
                title: Text('Activity',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: Icon(Icons.show_chart,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              const SizedBox(height: 10),
              const ListTile(
                title: Text('App Settings',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: Icon(Icons.settings,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              const SizedBox(height: 10),
              ListTile(
                title: const Text('Logout',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: const Icon(Icons.logout,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
                onTap: () {
                  LogOutService().Logout(context);
                },
              ),
            ],
          ),
          Expanded(
            child: SvgPicture.asset(
              'assets/vectors/analytics.svg',
            ),
          )
        ],
      ),
    );
  }
}

// void performLogout(BuildContext context) {
//   LogOutService().clearTokenAndLogout(context);
// }