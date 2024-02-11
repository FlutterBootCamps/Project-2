import 'package:flutter/material.dart';
import 'package:project_4/screen/log_in_screen.dart';

void main(List<String> args) {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}