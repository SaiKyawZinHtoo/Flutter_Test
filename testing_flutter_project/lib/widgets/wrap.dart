import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 20,
          spacing: 20,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Clicked Me Please!!"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Clicked Me Please!!"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Clicked Me Please!!"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Clicked Me Please!!"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Clicked Me Please!!"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Clicked Me Please!!"),
            ),
          ],
        ),
      ),
    );
  }
}
