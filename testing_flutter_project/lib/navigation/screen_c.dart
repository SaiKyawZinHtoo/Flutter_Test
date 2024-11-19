import 'package:flutter/material.dart';
import 'package:testing_flutter_project/navigation/screen_a.dart';
import 'package:testing_flutter_project/navigation/screen_b.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data from argument: $argument"),
            const Text("Screen C"),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_back_ios),
              label: const Text("Go to Screen A"),
              onPressed: () {
                Navigator.of(context).popUntil(
                  (route) => route.isFirst,
                );
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_back_ios),
              label: const Text("Go to Screen B"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
