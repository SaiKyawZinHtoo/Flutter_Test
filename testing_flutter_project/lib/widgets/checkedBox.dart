import 'package:flutter/material.dart';

class TestCheckedBox extends StatefulWidget {
  const TestCheckedBox({super.key});

  @override
  State<TestCheckedBox> createState() => _TestCheckedBoxState();
}

class _TestCheckedBoxState extends State<TestCheckedBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (v) {
                  setState(() {
                    isChecked = v!;
                  });
                },
              ),
              const Text(
                "Check",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
