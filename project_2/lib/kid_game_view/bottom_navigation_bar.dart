import 'package:flutter/material.dart';

import 'challenges_screen_view.dart';
import 'home_screen_view.dart';

class BottomNavigationBarState extends StatefulWidget {
  const BottomNavigationBarState({Key? key}) : super(key: key);

  static const List<Widget> _pages = <Widget>[
    HomeScreenView(),
    ChallengesScreenView(),
    ChallengesScreenView(),
    HomeScreenView(),

  ];

  @override
  _BottomNavigationBarStateState createState() =>
      _BottomNavigationBarStateState();
}

class _BottomNavigationBarStateState extends State<BottomNavigationBarState> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBarState._pages.elementAt(_selectedTab),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: colorMap[_selectedTab]!,
        currentIndex: _selectedTab,
        onTap: (value) {
          setState(() {
            _selectedTab = value;
          });
        },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
                backgroundColor: Color.fromRGBO(229, 229, 229, 0.8),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.track_changes),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.family_restroom),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              ),
            ])
    );
  }
}