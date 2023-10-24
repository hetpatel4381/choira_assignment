import 'package:choira/screens/DownloadPage.dart';
import 'package:choira/screens/DropBoxPage.dart';
import 'package:choira/screens/HomePage.dart';
import 'package:choira/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomePage(),
    SearchPage(),
    DownloadPage(),
    DropBoxPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/akar-icons_home.svg'),
            backgroundColor: const Color(0XFF14203B),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/akar-icons_search.svg'),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/iconoir_cloud-download.svg'),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/iconoir_cloud-download(1).svg'),
            label: 'Dropbox',
          ),
        ],
      ),
    );
  }
}
