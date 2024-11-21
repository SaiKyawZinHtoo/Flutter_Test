import 'package:flutter/material.dart';

class TestCircularProgressIndicator extends StatelessWidget {
  const TestCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          strokeWidth: 5,
        ),
      ),
    );
  }
}
