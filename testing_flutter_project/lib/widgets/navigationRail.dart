import 'package:flutter/material.dart';
import 'package:testing_flutter_project/sample_screen/home_screen.dart';
import 'package:testing_flutter_project/sample_screen/notification_screen.dart';
import 'package:testing_flutter_project/sample_screen/profile_screen.dart';
import 'package:testing_flutter_project/widgets/appBar.dart';

class NavigationRailWidget extends StatefulWidget {
  const NavigationRailWidget({super.key});

  @override
  State<NavigationRailWidget> createState() => _NavigationRailState();
}

class _NavigationRailState extends State<NavigationRailWidget> {
  int currentIndex = 0;

  final pages = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            onDestinationSelected: (index) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text(
                  "Home",
                ),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.search),
                label: Text(
                  "Search",
                ),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text(
                  "Profile",
                ),
              ),
            ],
            selectedIndex: currentIndex,
          ),
          Expanded(
            child: pages[currentIndex],
          ),
        ],
      ),
    );
  }
}
