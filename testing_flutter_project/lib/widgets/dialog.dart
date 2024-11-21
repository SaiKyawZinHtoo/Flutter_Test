import 'package:flutter/material.dart';

class TestDialog extends StatelessWidget {
  const TestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.green.shade100,
                elevation: 10,
                title: const Text("Dialog"),
                content: const Text("This is a dialog"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Confirm"),
                  ),
                ],
              ),
            );
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
