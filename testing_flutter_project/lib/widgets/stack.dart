import 'package:flutter/material.dart';

class StackTest extends StatelessWidget {
  const StackTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          Positioned(
            top: 0,
            right: -100,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
