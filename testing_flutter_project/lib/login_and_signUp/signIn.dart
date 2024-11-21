import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -30,
            top: -30,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.indigo.shade100,
            ),
          ),
          const Positioned(
            right: -50,
            top: -50,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.indigo,
            ),
          ),
          Positioned(
            left: 30,
            bottom: -70, // Adjusted to avoid overflow
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.indigo.shade100,
            ),
          ),
          const Positioned(
            left: 30,
            bottom: -90, // Adjusted to avoid overflow
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.indigo,
            ),
          ),
          Positioned.fill(
            top: 200, // Positioned from the top
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                        spreadRadius: 10,
                      )
                    ],
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
