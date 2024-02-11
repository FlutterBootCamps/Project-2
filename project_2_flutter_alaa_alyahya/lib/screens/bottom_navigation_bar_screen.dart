import 'package:flutter/material.dart';
import 'package:project_2_flutter_alaa_alyahya/screens/challenges_screen.dart';
import 'package:project_2_flutter_alaa_alyahya/screens/home_screen.dart';
import 'package:project_2_flutter_alaa_alyahya/screens/profile_screen.dart';
import 'package:project_2_flutter_alaa_alyahya/screens/setting_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectedScreen = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const ChallengesScreen(),
    const ProfileScreen(),
    const SettingScreen()    
  ];
  
  static const List  colors = [
    Color(0xff41AC68),
    Color(0XFFAB70DF),
    Color(0XFFDC3F00), 
    Color.fromARGB(255, 73, 97, 205),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            
      body: screens[selectedScreen],
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white10,
        items: const  [
          BottomNavigationBarItem(
            icon: Icon(Icons.house_rounded, size: 40,), 
            label: "Home",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ads_click, size: 40,), 
            label: "Challenge",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account_sharp, size: 40,), 
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 40,), 
            label: "Setting", 
          ),
        ],
        currentIndex: selectedScreen,
        onTap: (int index){
          selectedScreen = index ;
          setState((){            
          }); 
        },
        selectedItemColor: colors[selectedScreen],
      
      ) ,
    );
  }
}