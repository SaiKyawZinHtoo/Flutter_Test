import 'package:flutter/material.dart';

class TestSlide extends StatefulWidget {
  const TestSlide({super.key});

  @override
  State<TestSlide> createState() => _TestSlideState();
}

class _TestSlideState extends State<TestSlide> {
  double sliderValue = 0; // Define sliderValue as a state variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slider(
          value: sliderValue,
          min: 0,
          max: 100, // Set a range for the slider
          divisions: 10, // Optional: Add divisions for better control
          label: sliderValue.round().toString(), // Optional: Show label
          onChanged: (v) {
            setState(() {
              sliderValue = v; // Update the slider value
            });
          },
        ),
      ),
    );
  }
}
