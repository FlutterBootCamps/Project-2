import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_2_sultan_alotaibi/screens/challenges_page.dart';
import 'package:project_2_sultan_alotaibi/screens/home_page.dart';
import 'package:project_2_sultan_alotaibi/screens/profile_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  // Variable to keep track of the currently selected tab index
  int currentIndex = 0;

  // List of pages to be displayed in the BottomNavigationBar
  final List<Widget> _pages = [
    MyHomePage(),
    MyProfile(),
    MyChallenges(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the current page based on the currentIndex
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // Set the type of BottomNavigationBar
        type: BottomNavigationBarType.fixed,
        // Set the background color of the BottomNavigationBar
        backgroundColor: Color(0xffE5E5E5),
        // Set the color of unselected items
        unselectedItemColor: Color(0xffb1b1b1),
        // Define the onTap callback to update the currentIndex
        onTap: (index) => setState(() => currentIndex = index),
        // Set the current index to highlight the active tab
        currentIndex: currentIndex,
        // Define the BottomNavigationBar items
        items: [
          BottomNavigationBarItem(
            // Define the active and inactive icons for the first tab
            activeIcon: SvgPicture.asset('icons/Vector.svg', color: Color(0xff41AC78)),
            icon: SvgPicture.asset('icons/Vector.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the second tab
            activeIcon: SvgPicture.asset('icons/Vector (1).svg', color: Color(0xffDC3F00)),
            icon: SvgPicture.asset('icons/Vector (1).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the third tab
            activeIcon: SvgPicture.asset('icons/Vector (2).svg', color: Color(0xffAB70DF)),
            icon: SvgPicture.asset('icons/Vector (2).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the fourth tab
            activeIcon: SvgPicture.asset('icons/Vector (3).svg', color: Color.fromARGB(255, 112, 201, 223)),
            icon: SvgPicture.asset('icons/Vector (3).svg'),
            label: '',
          ),
        ],
      ),
    );
  }
}
