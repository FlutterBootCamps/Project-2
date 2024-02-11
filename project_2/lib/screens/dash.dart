import 'package:flutter/material.dart';
import 'package:project_2/screens/challenges.dart';
import 'package:project_2/screens/home.dart';
import 'package:project_2/screens/profile.dart';
import 'package:project_2/screens/setting.dart';

class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> { 
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Challenges(),
    Profile(),
    Setting()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 10, 234, 2),
        unselectedItemColor:Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
