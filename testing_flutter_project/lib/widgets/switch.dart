import 'package:flutter/material.dart';

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          value: isOpen,
          onChanged: (v) {
            setState(
              () {
                isOpen = v;
              },
            );
          },
        ),
      ),
    );
  }
}
