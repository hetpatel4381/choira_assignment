import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package

void main() {
  runApp(SplashScreenApp());
}

class SplashScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color(0xFF0A1733);
    return Scaffold(
      backgroundColor: backgroundColor, // Example background color
      body: Stack(
        children: [
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300), // Animation duration
              curve: Curves.easeOut, // Animation timing function
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/splash_animation.json'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 344,
            left: 85,
            width: 219.93,
            height: 77.59,
            child: Container(
              color: Colors.transparent, // Transparent background
              alignment: Alignment.center,
              child: Stack(
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ch',
                          style: TextStyle(
                            fontSize: 36,
                            color: Color(0xFFFFC701),
                          ),
                        ),
                        TextSpan(
                          text: 'o',
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'ira',
                          style: TextStyle(
                            fontSize: 36,
                            color: Color(0xFFFFC701),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 444,
                    left: 85,// Adjust as needed for positioning
                    child: SvgPicture.asset(
                      'assets/your_svg_image.svg', // Replace with your SVG file path
                      width: 40, // Adjust the size as needed
                      height: 40, // Adjust the size as needed
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Screen'),
      ),
      body: Center(
        child: Text('This is the onboarding screen of your app.'),
      ),
    );
  }
}
