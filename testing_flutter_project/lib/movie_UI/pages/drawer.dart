import 'package:flutter/material.dart';
import 'package:testing_flutter_project/login_and_signUp/signIn.dart';

class UIDrawer extends StatefulWidget {
  const UIDrawer({super.key});

  @override
  State<UIDrawer> createState() => _UIDrawerState();
}

class _UIDrawerState extends State<UIDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff202124),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Section
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey[900],
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      'assets/profile.jpg'), // Replace with your image
                ),
                SizedBox(width: 15),
                Text(
                  "Shan Lay",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Navigation Options
          Expanded(
            child: ListView(
              children: [
                _buildDrawerItem(
                  icon: Icons.movie,
                  text: "Movies",
                  onTap: () {
                    // Handle navigation
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.tv,
                  text: "TV Shows",
                  onTap: () {
                    // Handle navigation
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.favorite,
                  text: "Favorites",
                  onTap: () {
                    // Handle navigation
                  },
                ),
                const Divider(color: Colors.white54),
                _buildDrawerItem(
                  icon: Icons.settings,
                  text: "Settings",
                  onTap: () {
                    // Handle navigation
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.logout,
                  text: "Log Out",
                  onTap: () {
                    // Handle logout
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SignIn(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          // Footer Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "App Version: 1.0.0",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }
}
