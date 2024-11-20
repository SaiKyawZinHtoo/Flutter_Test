import 'package:flutter/material.dart';
import 'package:testing_flutter_project/sample_screen/home_screen.dart';
import 'package:testing_flutter_project/sample_screen/notification_screen.dart';
import 'package:testing_flutter_project/sample_screen/profile_screen.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int currentIndex = 0;

  final pages = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        centerTitle: true,
      ),
      body: pages[currentIndex],
      endDrawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Sudipto"),
              accountEmail: Text("sudipto@.com"),
              currentAccountPicture: CircleAvatar(),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                setState(() {
                  currentIndex = 0;
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Notification"),
              onTap: () {
                setState(() {
                  currentIndex = 1;
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                setState(() {
                  currentIndex = 2;
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
