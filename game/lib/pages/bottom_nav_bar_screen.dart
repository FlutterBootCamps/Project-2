import 'package:flutter/material.dart';
import 'package:game/pages/Challenges_scraan.dart';
import 'package:game/pages/home_screen.dart';
import 'package:game/pages/profile_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIdex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const ChallengeScreen(),
    const ProfileScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 20,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedIconTheme:
              const IconThemeData(color: Color.fromARGB(126, 0, 0, 0)),
          selectedIconTheme:
              const IconThemeData(color: Color.fromARGB(126, 0, 0, 0)),
          backgroundColor: const Color.fromARGB(213, 229, 229, 229),
          onTap: (idexOnTap) {
            selectedIdex = idexOnTap;
            setState(() {});
          },
          currentIndex: selectedIdex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.home,
                    size: 30,
                    color: selectedIdex == 0
                        ? const Color.fromARGB(255, 65, 172, 120)
                        : const Color.fromARGB(126, 0, 0, 0)),
                label: " "),
            BottomNavigationBarItem(
              icon: Icon(Icons.crisis_alert_sharp,
                  color: selectedIdex == 1
                      ? const Color.fromARGB(255, 220, 62, 0)
                      : const Color.fromARGB(126, 0, 0, 0),
                  size: 35),
              label: " ",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people,
                    color: selectedIdex == 2
                        ? const Color.fromARGB(255, 171, 112, 223)
                        : const Color.fromARGB(126, 0, 0, 0),
                    size: 35),
                label: " "),
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 35), label: " "),
          ]),
      body: screens[selectedIdex],
    );
  }
}
