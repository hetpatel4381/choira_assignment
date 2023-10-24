import 'package:flutter/material.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key});

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A1733),
      body: Column(
        children: [
          Container(
            height: 25,
            width: 358,
            margin: const EdgeInsets.only(left: 0, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.cast,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.menu_sharp,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Container(
              width: 358,
              height: 56,
              margin: const EdgeInsets.only(left: 0),
              child: const Text(
                "Mixing-Mastering Fundamentals Course",
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
          const SizedBox(
            height: 21,
          ),
          Container(
            height: 43,
            width: 358,
            margin: const EdgeInsets.only(left: 0),
          ),
          const SizedBox(
            height: 21,
          ),
          Container(
            width: 358,
            height: 187,
            margin: const EdgeInsets.only(left: 0),
            child: Image.asset("assets/Group21.png"),
          ),
          const SizedBox(
            height: 21,
          ),
          Container(
            width: 358,
            height: 173,
            margin: const EdgeInsets.only(left: 0, top: 20),
            color: const Color.fromARGB(255, 3, 36, 63),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Ellipse1.png",
                            height: 27,
                            width: 26.6,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Tannai Oberoi",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      child: const Text(
                        "Mentor",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: const Text(
                      "Music is the spiritual representation of an idea and one of the most important forms of communication in our daily lives.",
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/frame/multi-user-2.png",
                      color: Colors.yellow,
                      height: 20,
                    ),
                    const Text(
                      "2k Students",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.play_circle_outline_outlined,
                      color: Colors.yellow,
                    ),
                    const Text(
                      "10 lessons",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Text(
                      "4.5 score",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 110,
          ),
          Container(
            color: const Color.fromARGB(255, 3, 36, 63),
            width: 358,
            height: 78,
            margin: EdgeInsets.only(left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 0, top: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Text(
                          "💲308",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "per month",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 227,
                  margin: const EdgeInsets.only(right: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Subscribe",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
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
