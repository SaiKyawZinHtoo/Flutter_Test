import 'package:flutter/material.dart';
import 'package:testing_flutter_project/sample_screen/home_screen.dart';
import 'package:testing_flutter_project/sample_screen/notification_screen.dart';
import 'package:testing_flutter_project/sample_screen/profile_screen.dart';

class TestTabBar extends StatefulWidget {
  const TestTabBar({super.key});

  @override
  State<TestTabBar> createState() => _TestTabBarState();
}

class _TestTabBarState extends State<TestTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Search",
                icon: Icon(Icons.search),
              ),
              Tab(
                text: "Profile",
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(), // Content for Tab 1
            NotificationScreen(), // Content for Tab 2
            ProfileScreen(), // Content for Tab 3
          ],
        ),
      ),
    );
  }
}
