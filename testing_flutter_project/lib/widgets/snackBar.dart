import 'package:flutter/material.dart';

class TestSnackBar extends StatelessWidget {
  const TestSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                content: const Text("Shan Lay"),
                duration: const Duration(seconds: 2),
                action: SnackBarAction(
                    label: "Close",
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    }),
              ),
            );
          },
          child: const Text("Click Me"),
        ),
      ),
    );
  }
}
