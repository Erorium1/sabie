import 'package:flutter/material.dart';
import 'sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFE0E6), // Light pink background
        ),
        child: Stack(
          children: [
            // Background abstract shapes
            Positioned(
              top: -50,
              left: -30,
              child: Image.asset(
                'assets/welcomeScreen/Ellipse 1.png',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 50,
              right: -40,
              child: Image.asset(
                'assets/welcomeScreen/Ellipse 2.png',
                width: 180,
                height: 180,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 150,
              left: 20,
              child: Image.asset(
                'assets/welcomeScreen/Ellipse 3.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 200,
              right: 30,
              child: Image.asset(
                'assets/welcomeScreen/Ellipse 3-1.png',
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 250,
              left: -20,
              child: Image.asset(
                'assets/welcomeScreen/Ellipse 4.png',
                width: 140,
                height: 140,
                fit: BoxFit.contain,
              ),
            ),
            // Main content
            SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  // Main text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'A gentle guide for every heartbeat you carry',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Get Started button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD6E0), // Light pink/peach
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: const Color(0xFFF08080), // Darker pink border
                          width: 2,
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const SignUpScreen(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: const Color(0xFFF08080),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  // Main illustration
                  Expanded(
                    flex: 2,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        // Additional background shapes behind illustration
                        Positioned(
                          bottom: 100,
                          left: -30,
                          child: Image.asset(
                            'assets/welcomeScreen/Rectangle 5.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          right: -20,
                          child: Image.asset(
                            'assets/welcomeScreen/Vector 5.png',
                            width: 80,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                        // Main illustration
                        Image.asset(
                          'assets/welcomeScreen/Mask group.png',
                          fit: BoxFit.contain,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
