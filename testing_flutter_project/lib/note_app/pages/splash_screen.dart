import 'package:flutter/material.dart';
import 'package:testing_flutter_project/note_app/note_list_screen.dart';

class NoteSplashScreen extends StatefulWidget {
  const NoteSplashScreen({super.key});

  @override
  State<NoteSplashScreen> createState() => _NoteSplashScreenState();
}

class _NoteSplashScreenState extends State<NoteSplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _animationController.forward();

    // Navigate after the splash duration
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => const NoteListScreen(),
        ));
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1D2671), Color(0xFFC33764)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Animated Logo
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: _animation,
                child: const Icon(
                  Icons.note_alt,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // App Name
              FadeTransition(
                opacity: _animation,
                child: const Text(
                  "Note Keeper",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),

          // Footer text
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 40.0),
              child: Text(
                "Your notes, always with you.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
