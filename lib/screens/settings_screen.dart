import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: designColors[10],
      appBar: AppBar(
          toolbarHeight: 71,
          backgroundColor: designColors[9],
          centerTitle: true,
          title: const Text("Settings",
              style: TextStyle(
                fontSize: 30,
              ))),
      body: Center(
          child: Image.asset(
        "images/under_construction.png",
      )),
    );
  }
}
