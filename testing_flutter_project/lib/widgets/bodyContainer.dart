import 'package:flutter/material.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 5, color: Colors.black),
              ),
              height: 500,
              child: Container(
                padding: const EdgeInsets.all(40),
                height: 300,
                width: 300,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 5, color: Colors.black),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 50,
                      spreadRadius: 10,
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.green,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                child: const Text(
                  "Hello World!!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
