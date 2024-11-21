import 'package:flutter/material.dart';

class TestBottomSheet extends StatelessWidget {
  const TestBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                padding: const EdgeInsets.all(20),
                height: 300,
                width: double.infinity,
                child: Text("Shan Lay"),
              ),
            );
          },
          child: const Text("Click Me"),
        ),
      ),
    );
  }
}
