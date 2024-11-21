import 'package:flutter/material.dart';

class TestTextField extends StatefulWidget {
  const TestTextField({super.key});

  @override
  State<TestTextField> createState() => _TestTextFieldState();
}

class _TestTextFieldState extends State<TestTextField> {
  final focusNode = FocusNode();
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = "Hello";
    super.initState();
    focusNode.addListener(() {
      print("Focus Node Listener ${focusNode.hasFocus}");
    });
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Adjust column size
            children: [
              TextField(
                focusNode: focusNode,
                controller: controller,
                keyboardType: TextInputType.emailAddress,
                onTapOutside: (event) {
                  focusNode.unfocus();
                },
                onChanged: (value) {
                  print("Email: $value");
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Your Name",
                  suffixIcon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 20), // Add spacing between TextFields
              TextField(
                // controller: controller,
                // focusNode: focusNode,
                keyboardType: TextInputType.visiblePassword,
                onTapOutside: (event) {
                  focusNode.unfocus();
                },
                onChanged: (value) {
                  print("Password: $value");
                },
                obscureText: true,
                obscuringCharacter: "*",
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Your Email",
                  suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.clear();
                  print("Email: ${controller.text}");
                },
                child: const Text(
                  "Submit",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
