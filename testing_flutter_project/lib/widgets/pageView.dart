import 'package:flutter/material.dart';

class TestPageView extends StatefulWidget {
  const TestPageView({super.key});

  @override
  State<TestPageView> createState() => _TestPageViewState();
}

class _TestPageViewState extends State<TestPageView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView(
              onPageChanged: (value) {
                setState(
                  () {
                    currentIndex = value;
                  },
                );
              },
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: currentIndex == 0 ? Colors.red : Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: currentIndex == 1 ? Colors.green : Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: currentIndex == 2 ? Colors.blue : Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
