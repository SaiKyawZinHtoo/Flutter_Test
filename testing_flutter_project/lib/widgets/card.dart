import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  const ExampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          //width: 50,
          child: Card(
              color: Colors.blue,
              elevation: 25,
              child: Text(
                "Example Card Testing Is Here..",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  //backgroundColor: Colors.greenAccent
                ),
              )),
        ),
      ),
    );
  }
}
