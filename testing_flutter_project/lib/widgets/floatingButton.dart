import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Hello My Friends"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.purple.shade100,
        tooltip: "Go To The Search...",
        elevation: 10,
        onPressed: () {},
        icon: const Icon(Icons.search),
        label: const Text("Search"),
      ),
    );
  }
}
