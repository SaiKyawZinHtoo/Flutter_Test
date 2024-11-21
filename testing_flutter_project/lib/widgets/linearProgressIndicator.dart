import 'package:flutter/material.dart';

class TestLinearProgressIndicator extends StatelessWidget {
  const TestLinearProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LinearProgressIndicator(
          color: Colors.red,
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
