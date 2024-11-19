import 'package:flutter/material.dart';
import 'package:testing_flutter_project/navigation/screen_a.dart';
import 'package:testing_flutter_project/navigation/screen_c.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data: $data"),
            const Text("Screen B"),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward_ios),
              label: const Text("Go to Screen C"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ScreenC(),
                  ),
                );
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_back_ios),
              label: const Text("Go to Screen A"),
              onPressed: () {
                Navigator.of(context).pop("Data From Screen B");
              },
            ),
          ],
        ),
      ),
    );
  }
}
