import 'package:flutter/material.dart';

class ExpandedAndFlexible extends StatelessWidget {
  const ExpandedAndFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 400,
            color: Colors.amber,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ),
              ],
            )));
  }
}
