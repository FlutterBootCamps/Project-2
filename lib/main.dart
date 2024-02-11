import 'package:flutter/material.dart';
import 'package:maram_project_2/screens/bottom_bar.dart';
import 'package:maram_project_2/screens/challenge_screen.dart';
import 'package:maram_project_2/screens/login_screen.dart';
import 'package:maram_project_2/screens/home_screen.dart';
import 'package:maram_project_2/screens/profile.dart';
import 'package:maram_project_2/screens/verbal_skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
