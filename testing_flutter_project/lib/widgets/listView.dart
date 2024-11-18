import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = List.generate(50, (index) => Text("Text $index"));
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: Text("Shan Lay"),
          ),
          Expanded(
            child: ListView(
              children: listItem,
            ),
          ),
        ],
      ),
    );
  }
}
