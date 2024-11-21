import 'package:flutter/material.dart';

class TestTextFormField extends StatefulWidget {
  const TestTextFormField({super.key});

  @override
  State<TestTextFormField> createState() => _TestTextFormFieldState();
}

class _TestTextFormFieldState extends State<TestTextFormField> {
  late final TextEditingController controller;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey, // Attach the GlobalKey to the Form
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Your Name",
                    hintText: "Enter Your Name",
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.email),
                  ),
                  // Add validation logic
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    if (!RegExp(r"^[a-zA-Z\s]+$").hasMatch(value)) {
                      return 'Name must only contain letters';
                    }
                    return null; // Validation passed
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Trigger form validation
                    if (_formKey.currentState!.validate()) {
                      // If validation passes
                      debugPrint("Valid Input: ${controller.text}");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Form submitted successfully!")),
                      );
                    } else {
                      // If validation fails
                      debugPrint("Validation failed");
                    }
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
