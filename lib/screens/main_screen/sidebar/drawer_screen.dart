import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

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
            onPressed: () {},
            icon: SvgPicture.asset('assets/vectors/icon_back.svg'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 30),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/2859616/pexels-photo-2859616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                SizedBox(width: 10),
                Expanded(
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
          const Column(
            children: [
              ListTile(
                title: Text('Manage Account',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: Icon(Icons.person,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text('Search Tasks',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: Icon(Icons.search,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text('Activity',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: Icon(Icons.show_chart,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text('App Settings',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: Icon(Icons.settings,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text('Logout',
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
                leading: Icon(Icons.logout,
                    color: Color.fromRGBO(255, 255, 255, 0.8)),
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/vectors/analytics.svg',
          ),
        ],
      ),
    );
  }
}
