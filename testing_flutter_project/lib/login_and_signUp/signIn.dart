import 'package:flutter/material.dart';
import 'package:testing_flutter_project/login_and_signUp/signUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isPasswordVisible = false;
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
            top: 250, // Positioned from the top
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
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Colors.black12,
                              offset: Offset(0, 2),
                              blurStyle: BlurStyle.outer,
                            )
                          ],
                        ),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              textBaseline: TextBaseline
                                  .alphabetic, // Keeps text alignment consistent
                            ),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                            ),
                            prefixIconConstraints: BoxConstraints(
                              minWidth: 70,
                              // Adjust minimum width for proper alignment
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      DecoratedBox(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.black12,
                              offset: Offset(0, 2),
                              blurStyle: BlurStyle.outer)
                        ]),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !isPasswordVisible,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(top: 13),
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              fontSize: 16,
                              textBaseline: TextBaseline
                                  .alphabetic, // Keeps text alignment consistent
                            ),
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                icon: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                )),
                            prefixIconConstraints: const BoxConstraints(
                              minWidth:
                                  70, // Adjust minimum width for proper alignment
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          backgroundColor: Colors.indigo,
                          elevation: 10,
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
                      const Text(
                        "Forget Password?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (_) => const SignUp(),
                                ),
                              );
                            },
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
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
