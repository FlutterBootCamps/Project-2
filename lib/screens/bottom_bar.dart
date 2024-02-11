import 'package:flutter/material.dart';
import 'package:maram_project_2/screens/challenge_screen.dart';
import 'package:maram_project_2/screens/home_screen.dart';
import 'package:maram_project_2/screens/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //current index is HomeScreen, it is first page
  int _currentIndex = 0;

  //pages for each BottomNavigationBarItem
  final List<Widget> _pages = [
    const HomeScreen(),
    const ChallengeScreen(),
    const ProfileScreen(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      //here the page in the current index
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        //background image for bar
        backgroundColor: const Color(0xFFE5E5E5),
        //the color for unselected item
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFFAB70DF),
        //disable show label
        showSelectedLabels: false,
        showUnselectedLabels: false,
        //when we need to change the page from bar
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // all items in bar
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home, color: Color(0xFF77B29F)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ads_click),
            activeIcon: Icon(Icons.ads_click, color: Color(0xFFDC3F00)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            activeIcon: Icon(Icons.people, color: Color(0xFFAB70DF),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}
