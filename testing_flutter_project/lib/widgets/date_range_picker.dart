import 'package:flutter/material.dart';

class TestDateRangePicker extends StatelessWidget {
  const TestDateRangePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Range Picker"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select a Date Range",
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
                final DateTimeRange? pickedRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2050),
                  builder: (context, child) {
                    return Theme(
                      data: ThemeData.light().copyWith(
                        primaryColor: Colors.teal,
                        appBarTheme: const AppBarTheme(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white,
                        ),
                        colorScheme: const ColorScheme.light(
                          primary: Colors.teal,
                        ),
                        textButtonTheme: TextButtonThemeData(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.teal, // Button text color
                          ),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );

                if (pickedRange != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Selected: ${pickedRange.start.toString().split(' ')[0]} to ${pickedRange.end.toString().split(' ')[0]}",
                      ),
                      backgroundColor: Colors.teal,
                      duration: const Duration(seconds: 3),
                    ),
                  );
                }
              },
              child: const Text(
                "Choose Date Range",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
