import 'package:flutter/material.dart';

class TestTimePicker extends StatelessWidget {
  const TestTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Picker Demo"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select a Time",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () async {
                final result = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  builder: (context, child) {
                    return Theme(
                      data: ThemeData.light().copyWith(
                        timePickerTheme: const TimePickerThemeData(
                          dialBackgroundColor: Colors.teal,
                          dialTextColor: Colors.white,
                          hourMinuteTextColor: Colors.teal,
                          hourMinuteShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            side: BorderSide(color: Colors.teal),
                          ),
                          dayPeriodTextColor: Colors.teal,
                        ),
                      ),
                      child: child!,
                    );
                  },
                );

                if (result != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Selected time: ${result.format(context)}"),
                      backgroundColor: Colors.teal,
                      duration: const Duration(seconds: 2),
                    ),
                  );
                }
              },
              child: const Text(
                "Choose Time",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
