import 'package:choira/screens/BottomNavigation.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A1733),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 312.73,
            height: 351,
            decoration: BoxDecoration(
              color: const Color(0xFF0A1733),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    top: 16.85,
                    child: Transform.rotate(
                      angle: 12.43 * (3.14159265359 / 180),
                      child: Image.asset(
                        'assets/Rectangle-1.png',
                        width: 166.1,
                        height: 166.1,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 166.59,
                    child: Transform.rotate(
                      angle: -11.39 * (3.14159265359 / 180),
                      child: Image.asset(
                        'assets/Rectangle-2.png',
                        width: 166.1,
                        height: 166.1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 96.4,
                    top: 16.85,
                    child: Transform.rotate(
                      angle: 11.39 * (3.14159265359 / 180),
                      child: Image.asset(
                        'assets/Rectangle-3.png',
                        width: 206.1,
                        height: 206.1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 96.4,
                    top: 136.59,
                    child: Transform.rotate(
                      angle: 11.39 * (3.14159265359 / 180),
                      child: Image.asset(
                        'assets/Rectangle-4.png',
                        width: 236.1,
                        height: 236.1,
                      ),
                    ),
                  ),
                ],
              ),

            ),
          ),
          const SizedBox(height: 24),
          Column(
            children: [
              Container(
                width: 259,
                height: 170,
                margin: const EdgeInsets.only(right: 60),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Achieve all your goals now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      'Online courses to specialize in the entertainment field that lead the generation today.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFFFC701),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    fixedSize: const Size(326, 50),
                    padding: const EdgeInsets.all(0), // Remove padding
                    alignment: Alignment.center,
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF0A1733),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                        color: Colors.white,
                        width: 1), // Border width set to 1px
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    fixedSize: const Size(326, 50),
                    padding: const EdgeInsets.all(0), // Remove padding
                    alignment: Alignment.center,
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MyBottomNavigationBar(),
                      ),
                    );
                  },
                  child: const Text(
                    'Guest Mode',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
