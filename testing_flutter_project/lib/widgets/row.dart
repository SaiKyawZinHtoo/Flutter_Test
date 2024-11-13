import 'package:flutter/material.dart';

class RowTest extends StatelessWidget {
  const RowTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 200,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    ));
  }
}
