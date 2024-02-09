import 'package:educational_kids_game/components/course.dart';
import 'package:educational_kids_game/components/icon_text_container.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: designColors[10],
      appBar: AppBar(
        toolbarHeight: 71,
        backgroundColor: designColors[9],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconTextContainer(
              width: 51,
              image: "icons/flame.png",
              text: "3",
              color: designColors[3],
              padding: 0,
              fontSize: 25,
            ),
            IconTextContainer(
              width: 134,
              image: "icons/treasure.png",
              text: "1423 XP",
              color: designColors[7],
              padding: 0,
              fontSize: 25,
            ),
            IconTextContainer(
              width: 77,
              image: "icons/heart.png",
              text: "∞",
              color: designColors[8],
              padding: 10,
              fontSize: 40,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          height: 780,
          child: ListView(
            children: const [
              SizedBox(height: 53),
              Course(courseName: "Logical Reasoning", courseCrowns: 18,firstUnitProgress: 0.5, noOfUnits: 3),
              Course(courseName: "Artistic thinking", courseCrowns: 35, firstUnitProgress: 0.85, noOfUnits: 4),
              Course(courseName: "Verbal Skills", courseCrowns: 3, firstUnitProgress: 0.2, noOfUnits: 2)
            ],
          ),
        ),
      ),
    );
  }
}


