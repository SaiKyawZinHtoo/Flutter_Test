import 'package:flutter/material.dart';
import 'package:http_test/http_test/post_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Test HTTP",
      home: PostList(),
    );
  }
}
