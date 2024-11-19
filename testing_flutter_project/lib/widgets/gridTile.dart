import 'package:flutter/material.dart';

class GritTileWidget extends StatelessWidget {
  const GritTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 100, crossAxisCount: 2, mainAxisSpacing: 10),
        itemBuilder: (context, index) => GridTile(
          header: Text(
            "Header $index",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          footer: Container(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
            child: Text("Footer $index"),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "images/testing.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
