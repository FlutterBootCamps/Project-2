import 'package:flutter/material.dart';
import 'package:project_4/screen/challenges_screen.dart';
import 'package:project_4/screen/home_screen.dart';
import 'package:project_4/screen/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  List screen = [
    HomeScreen(),
    ProfileScreen(),
    ChallengeesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (indexOnTap) {
          print(indexOnTap);
          selectedIndex = indexOnTap;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.circle_rounded), label: ""),
        ],
      ),
    );
  }
}
