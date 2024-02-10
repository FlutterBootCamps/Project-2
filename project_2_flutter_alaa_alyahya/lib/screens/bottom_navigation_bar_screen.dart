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
    Color.fromARGB(255, 73, 97, 205)
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.redAccent,
            
      body: screens[selectedScreen],
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black12,
        items:  [
          const BottomNavigationBarItem(
            icon: 
            // Image.asset("asset/home.png", width: 50,),
            Icon(Icons.home), 
            label: "Home",
            ),
          BottomNavigationBarItem(
            icon: Image.asset("asset/challenge.png", width: 50,),
            // Icon(Icons.golf_course_sharp), 
            label: "Challenge"
          ),
          BottomNavigationBarItem(
            icon: Image.asset("asset/profile.png",width: 50,),
            // Icon(Icons.person), 
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("asset/setting.png", width: 50,), 
            // Icon(Icons.settings), 
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
      ),

    );
  }
}