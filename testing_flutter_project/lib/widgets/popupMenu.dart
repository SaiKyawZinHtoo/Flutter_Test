import 'package:flutter/material.dart';

class TestPopupMenu extends StatelessWidget {
  const TestPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent.shade700,
        title: const Text("Popup Menu"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: "Item 1",
                  child: Text(
                    "Item 1",
                  ),
                ),
                const PopupMenuItem(
                  value: "Item 2",
                  child: Text(
                    "Item 2",
                  ),
                ),
                const PopupMenuItem(
                  value: "Item 3",
                  child: Text(
                    "Item 3",
                  ),
                ),
              ];
            },
            onOpened: () => print(
              "Open",
            ),
            onCanceled: () => print(
              "Cancel",
            ),
            onSelected: (value) {
              print("Selected: $value");
              if (value == "Item 1") {
                print("Item 1");
              }
              if (value == "Item 2") {
                print("Item 2");
              }
              if (value == "Item 3") {
                print("Item 3");
              }
            },
          ),
        ],
      ),
    );
  }
}
