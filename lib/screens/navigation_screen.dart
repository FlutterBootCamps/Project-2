import 'package:educational_kids_game/data/colors.dart';
import 'package:educational_kids_game/screens/challenges_screen.dart';
import 'package:educational_kids_game/screens/home_screen.dart';
import 'package:educational_kids_game/screens/profile_screen.dart';
import 'package:educational_kids_game/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int selectedIndex = 2;
  List<Widget> screens = [
    const HomeScreen(),
    const ChallengesScreen(),
    const ProfileScreen(),
    const SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        color: const Color(0xffE9E8E8),
        height: 88,
        padding: const EdgeInsets.symmetric(horizontal: 30.58),
        child: BottomNavigationBar(
          
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: designColors[9],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
          BottomNavigationBarItem(icon: Image.asset("icons/home_disabled.png"), label: "", activeIcon: Image.asset("icons/home_enabled.png")),
          BottomNavigationBarItem(icon: Image.asset("icons/objective_disabled.png",), label: "", activeIcon: Image.asset("icons/objective_enabled.png")),
          BottomNavigationBarItem(icon: Image.asset("icons/people_disabled.png"), label: "", activeIcon: Image.asset("icons/people_enabled.png")),
          BottomNavigationBarItem(icon: Image.asset("icons/settings_disabled.png"), label: "", activeIcon: Image.asset("icons/settings_enabled.png")),
        
        ]),
      ),
    );
  }
}