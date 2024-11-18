import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => Card(
          elevation: 5,
          color: Colors.amber,
          child: Text("Shan Lay"),
        ),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        // children: const [
        //   Card(
        //     semanticContainer: true,
        //     elevation: 5,
        //     color: Colors.amber,
        //     child: Text(
        //       "Shan Lay",
        //       style: TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   Card(
        //     elevation: 5,
        //     color: Colors.amber,
        //     child: Text("Shan Lay"),
        //   ),
        //   Card(
        //     elevation: 5,
        //     color: Colors.amber,
        //     child: Text("Shan Lay"),
        //   ),
        //   Card(
        //     elevation: 5,
        //     color: Colors.amber,
        //     child: Text("Shan Lay"),
        //   ),
        // ],
      ),
    );
  }
}
