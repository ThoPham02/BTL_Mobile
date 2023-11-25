import 'package:flutter/material.dart';

class SidebarScreen extends StatefulWidget {
  const SidebarScreen({super.key});

  @override
  State<SidebarScreen> createState() => _SidebarScreenState();
}

class _SidebarScreenState extends State<SidebarScreen> {
  final String userName = 'Jessie Yaegar';
  final String userCountry = 'Indonesia';
  final String profilePictureUrl =
      'https://images.pexels.com/photos/2859616/pexels-photo-2859616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'; // URL của hình ảnh giả định

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        color: const Color.fromRGBO(14, 31, 83, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(profilePictureUrl),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      userCountry,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    title: Text('Manage Account',
                        style: TextStyle(color: Colors.white)),
                    leading: Icon(Icons.person, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    title: Text('Search Tasks',
                        style: TextStyle(color: Colors.white)),
                    leading: Icon(Icons.search, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    title:
                        Text('Activity', style: TextStyle(color: Colors.white)),
                    leading: Icon(Icons.show_chart, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    title: Text('App Settings',
                        style: TextStyle(color: Colors.white)),
                    leading: Icon(Icons.settings, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    title:
                        Text('Logout', style: TextStyle(color: Colors.white)),
                    leading: Icon(Icons.logout, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: const Text('Analytics',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
