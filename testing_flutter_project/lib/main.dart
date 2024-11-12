import 'package:flutter/material.dart';
import 'package:testing_flutter_project/widgets/appBar.dart';
import 'package:testing_flutter_project/widgets/bodyContainer.dart';
import 'package:testing_flutter_project/widgets/button.dart';
import 'package:testing_flutter_project/widgets/card.dart';
import 'package:testing_flutter_project/widgets/imageTesting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBarWidget(),
        body: ButtonTesting(),
      ),
    );
  }
}
