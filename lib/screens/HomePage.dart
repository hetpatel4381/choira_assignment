import 'package:choira/screens/CourseDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> items = [
    {"name": "Song writing", "img": "assets/course/development 1.png"},
    {"name": "Mixing-Mostering", "img": "assets/course/designing-tablet 1.png"},
    {"name": "Composing", "img": "assets/course/unsplash__b35lgEvMtw.png"},
    {"name": "Piano", "img": "assets/course/bulb 1.png"},
    {"name": "Guitar", "img": "assets/course/startup 1.png"}
  ];

  final List<Map<String, dynamic>> frames = [
    {
      "title": "Learn about the Beats",
      "img": "assets/frame/-XFSBw8w_400x400 1.png",
      "intro": "Introduction",
      "img_icon1": "assets/frame/sound-on.png",
      "img_icon2": "assets/frame/multi-user-2.png",
      "text1": "Hector vega",
      "text2": "2k Students"
    },
    {
      "title": "Welcome to Music",
      "img": "assets/frame/Rectangle 15.png",
      "intro": "Introduction",
      "img_icon1": "assets/frame/sound-on.png",
      "img_icon2": "assets/frame/multi-user-2.png",
      "text1": "Freddy vega",
      "text2": "20k Students"
    },
    {
      "title": "Learn basic song writing",
      "img": "assets/frame/Rectangle 15(1).png",
      "intro": "Introduction",
      "img_icon1": "assets/frame/sound-on.png",
      "img_icon2": "assets/frame/multi-user-2.png",
      "text1": "Sammy vega",
      "text2": "5k Students"
    },
  ];

  bool isYellow = false;

  void toggleColor() {
    setState(() {
      isYellow = !isYellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A1733),
      body: Column(
        children: [
          Container(
            width: 356,
            margin: const EdgeInsets.only(top: 40, left: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/o.svg',
                        width: 17.1,
                        height: 16.41,
                        color: const Color(0xFFFFC701),
                      ),
                      SvgPicture.asset(
                        'assets/Vector-5-(Stroke).svg',
                        width: 18.8,
                        height: 5.85,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 22,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 19,
                        height: 22,
                        child: const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 27,
                        height: 27,
                        child: SvgPicture.asset('assets/Ellipse-1.svg',
                            width: 27, height: 27),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Container(
            width: 358,
            height: 97,
            margin: const EdgeInsets.only(left: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 351,
                  height: 25,
                  child: const Text(
                    "What are you going to learn today?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  width: 358,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0XFF14203B),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22),
                        child: SvgPicture.asset(
                          'assets/Vector.svg',
                          height: 13,
                          width: 13,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 17),
                        child: const Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 25,
            width: 359,
            margin: const EdgeInsets.only(left: 28),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Course",
                  style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                ),
                Text("View more",
                    style: TextStyle(fontSize: 12, color: Color(0xffffffff))),
              ],
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Container(
            height: 100,
            width: 358,
            // color: Colors.white,
            margin: const EdgeInsets.only(left: 28),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourseDetailPage(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ClipOval(
                            child: Image.asset(
                              items[index]["img"]!,
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          items[index]["name"]!,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 11),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 21,
          ),
          Container(
            height: 25,
            width: 359,
            margin: const EdgeInsets.only(left: 28),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "learn for free",
                  style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Container(
            height: 179,
            width: 358,
            // color: Colors.white,
            margin: const EdgeInsets.only(left: 28),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        width: 154,
                        height: 96,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.green.shade300,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          frames[index]["img"]!,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 53,
                        child: Column(
                          children: [
                            Text(
                              frames[index]["title"]!,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 182,
                              height: 27,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 0),
                                    child: Image.asset(
                                      frames[index]["img_icon1"]!,
                                      height: 12,
                                      width: 12.6,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Text(
                                      frames[index]["text1"]!,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 0),
                                    child: Image.asset(
                                      frames[index]["img_icon2"]!,
                                      height: 12,
                                      width: 12.6,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Text(
                                      frames[index]["text2"]!,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 15,
                        width: 75,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 126, 175, 221),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            frames[index]["intro"]!,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 76, 148),
                                fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          const SizedBox(
            height: 31,
          ),
          Container(
            width: 358,
            height: 77,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(157, 77, 82, 0.37),
                  Color(0xFF101E3B),
                  Color.fromRGBO(148, 176, 97, 0.51),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
                  -0.2431,
                  0.4811,
                  1.3876
                ], // Adjust the stops based on your values
                transform: GradientRotation(94.03 * 3.14159265 / 180.0),
              ),
            ),
            margin: const EdgeInsets.only(left: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    "assets/lock-and-key-1.png",
                  ),
                ),
                Container(
                  width: 189,
                  height: 32,
                  margin: const EdgeInsets.all(20),
                  child: const Text(
                    "Access more than 700 courses by purchasing a plan",
                    style: TextStyle(fontSize: 14, color: Colors.white),
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
