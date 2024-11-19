import 'package:flutter/material.dart';

class TestStatefulWidget extends StatefulWidget {
  const TestStatefulWidget({super.key});

  @override
  State<TestStatefulWidget> createState() => _TestStatefulWidgetState();
}

class _TestStatefulWidgetState extends State<TestStatefulWidget> {
  int number = 1;

  @override
  void initState() {
    super.initState();
    debugPrint("initState $number");
  }

  @override
  void didUpdateWidget(covariant TestStatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("didUpdateWidget $number");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build $number");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                });

                print(number);
              },
              child: const Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // void didUpdateWidget(covariant TestStatefulWidget oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   print("didUpdateWidget $number");
  // }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint("deactivate $number");
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint("dispose $number");
  }
}
