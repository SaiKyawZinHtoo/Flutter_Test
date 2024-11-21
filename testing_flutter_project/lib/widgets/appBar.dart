import 'package:flutter/material.dart';

class appBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const appBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.white),
      title: const Text(
        "Flutter Demo Home Page",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: const [
        Icon(Icons.logout, color: Colors.white),
        SizedBox(width: 10),
      ],
      backgroundColor: Colors.deepPurple,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
