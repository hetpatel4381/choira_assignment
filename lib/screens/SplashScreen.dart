import 'package:choira/screens/OnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    await Future.delayed(const Duration(milliseconds: 800));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnBoardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color(0xFF0A1733);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'ch',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                      color: Color(0xFFFFC701),
                    ),
                  ),
                  TextSpan(
                    text: 'o',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: 'ira',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                      color: Color(0xFFFFC701),
                    ),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(
              'assets/Vector-5-(Stroke).svg',
              width: 42,
              height: 13,
              color: const Color(0xFFFFC701),
            ),
          ],
        ),
      ),
    );
  }
}