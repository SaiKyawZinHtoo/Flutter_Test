import 'package:flutter/material.dart';

class NoteTheme {
  static ThemeData lightTheme() => ThemeData(
        brightness: Brightness.light,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.teal),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.black87),
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
      );

  static ThemeData darkTheme() => ThemeData(
        brightness: Brightness.dark,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.blue),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white70),
        ),
        iconTheme: const IconThemeData(color: Colors.white70),
      );
}
