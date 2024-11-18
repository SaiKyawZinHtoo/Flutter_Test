import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const Column(
        children: [
          Text("Divider Widget"),
          Divider(
            color: Colors.amber,
            thickness: 30,
            height: 30,
            endIndent: 20,
            indent: 20,
            //direction: Axis.horizontal,
          ),
          Text("Divider Widget"),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Text("Divider Widget"),
                VerticalDivider(
                  color: Colors.amber,
                  thickness: 30,
                  width: 30,
                  indent: 20,
                  endIndent: 20,
                ),
                Text("Divider Widget"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
