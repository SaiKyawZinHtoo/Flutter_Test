import 'package:flutter/material.dart';

class GesturedectorWidget extends StatelessWidget {
  const GesturedectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          splashColor: Colors.red,
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            print("Gesture Detector clicked.");
          },
          onDoubleTap: () {
            print("Gesture Detector Double clicked.");
          },
          child: Ink(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: const Text("Gesture Detector")),
        ),
      ),
    );
  }
}
