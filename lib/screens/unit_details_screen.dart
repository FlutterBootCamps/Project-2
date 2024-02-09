import 'package:educational_kids_game/components/icon_text_container.dart';
import 'package:educational_kids_game/components/lesson_container.dart';
import 'package:educational_kids_game/components/unit_info_container.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class UnitDetailsScreen extends StatelessWidget {
  const UnitDetailsScreen(
      {super.key,
      required this.courseName,
      required this.noOfCrowns,
      required this.progress});

  final String courseName;
  final int noOfCrowns;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: designColors[10],
      appBar: AppBar(
        leadingWidth: 245,
        leading: Center(
            child: Text(
          courseName,
          style: const TextStyle(fontSize: 30),
        )),
        toolbarHeight: 71,
        backgroundColor: designColors[9],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextContainer(
                width: 60,
                image: Image.asset("icons/crown.png"),
                color: designColors[14],
                padding: 0,
                text: "$noOfCrowns",
                fontSize: 25),
            IconTextContainer(
                width: 80,
                image: Image.asset("icons/gem.png"),
                color: designColors[15],
                padding: 0,
                text: "213",
                fontSize: 25)
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 65, right: 65, top: 9),
            child: Column(
              children: [
                UnitInfoContainer(
                    noOfCrowns: noOfCrowns, unitProgress: progress),
                const SizedBox(
                  height: 64,
                ),
                const LessonContainer(
                  image: "images/pencil.png",
                  label: "Intro",
                  crownText: "1",
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LessonContainer(
                      image: "images/book.png",
                      label: "Phrases",
                      crownText: "1",
                    ),
                    LessonContainer(
                      image: "images/bike.png",
                      label: "Travel",
                      crownText: "1",
                    ),
                  ],
                ),
                const LessonContainer(
                  image: "icons/lock_small.png",
                  label: "",
                  crownText: "",
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LessonContainer(
                      image: "icons/lock_small.png",
                      label: "",
                      crownText: "",
                    ),
                    LessonContainer(
                      image: "icons/lock_small.png",
                      label: "",
                      crownText: "",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
