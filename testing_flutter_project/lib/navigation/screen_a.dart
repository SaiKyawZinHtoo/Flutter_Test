import 'package:flutter/material.dart';
import 'package:testing_flutter_project/navigation/screen_b.dart';
import 'package:testing_flutter_project/navigation/screen_c.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Screen A"),
            ElevatedButton.icon(
              icon: Icon(Icons.arrow_forward_ios),
              label: Text("Go to Screen B"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ScreenB(),
                  ),
                );
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.arrow_forward_ios),
              label: Text("Go to Screen C"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ScreenC(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
