import 'package:flutter/material.dart';
import 'package:testing_flutter_project/navigation/screen_a.dart';

class BuildContextWidget extends StatelessWidget {
  const BuildContextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const ScreenA(),
              ),
            );
          },
          child: const Text("Go To The Next Page"),
        ),
      ),
    );
  }
}
