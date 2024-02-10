import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:project_2_saad_alharbi/pages/challenges_page.dart';
import 'package:project_2_saad_alharbi/pages/home_page.dart';
import 'package:project_2_saad_alharbi/pages/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int myIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    ChallengePage(),
    ProfilePage(),
  ];
  List<Color> iconColors = [
    const Color(0xff41AC78),
    const Color(0xffDC3F00),
    const Color(0xffAB70DF),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          onTap: (index) {
            if (index != 3) {
              setState(() {
                myIndex = index;
              });
            }
          },
          currentIndex: myIndex,
          backgroundColor: const Color(0xffe9e8e7),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: iconColor(0)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/bullseye-arrow.svg",
                color: iconColor(1),
                width: 30,
                height: 30,
              ),
              label: 'Challenges',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.people, color: iconColor(2)),
              label: 'Profile',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
    );
  }

  Color iconColor(int index) {
    return index == myIndex ? iconColors[index] : Colors.grey;
  }
}
