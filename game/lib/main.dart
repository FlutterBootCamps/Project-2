import 'package:flutter/material.dart';
import 'package:game/pages/log_in_screen.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: LogInScreen(), 
        debugShowCheckedModeBanner: false);
  }
}
