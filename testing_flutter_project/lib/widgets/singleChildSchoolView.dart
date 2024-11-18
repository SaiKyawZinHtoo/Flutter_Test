import 'package:flutter/material.dart';

class SinglechildschoolviewWidget extends StatelessWidget {
  const SinglechildschoolviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
            children: List.generate(
          20,
          (index) => ListTile(
            contentPadding: const EdgeInsets.all(8),
            title: Text(
              "Text $index",
              style: const TextStyle(fontSize: 20),
            ),
            tileColor: Colors.amber.shade200,
          ),
        )),
      )),
    );
  }
}
