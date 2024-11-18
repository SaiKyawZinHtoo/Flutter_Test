import 'dart:math';

import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: Text("Shan Lay"),
          ),
          // Expanded(
          //   child: ListView(
          //     children: List.generate(
          //       50,
          //       (index) => ItemText(text: index.toString()),
          //     ),
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return ItemText(text: index.toString());
                }),
          )
        ],
      ),
    );
  }
}

class ItemText extends StatelessWidget {
  const ItemText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    // log("build $text");
    return Text("index $text");
  }
}
