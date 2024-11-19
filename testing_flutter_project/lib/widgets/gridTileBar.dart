import 'package:flutter/material.dart';

class GridTileBarWidget extends StatelessWidget {
  const GridTileBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridTile(
          header: GridTileBar(
            leading: CircleAvatar(
              child: Text("S"),
            ),
            title: Text("Shan Lay"),
            trailing: Icon(Icons.phone),
            subtitle: Text("0912345678"),
            backgroundColor: Colors.amber,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.amber,
            title: Row(
              children: const [
                Icon(Icons.heart_broken),
                Text(
                  "Like",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "images/testing.jpg",
                fit: BoxFit.cover,
                height: 200,
              )),
        ),
      ),
    );
  }
}
