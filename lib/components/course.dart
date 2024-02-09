import 'package:educational_kids_game/components/icon_text_container.dart';
import 'package:educational_kids_game/components/locked_unit.dart';
import 'package:educational_kids_game/components/unit.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class Course extends StatelessWidget {
  const Course({
    super.key, required this.courseName, required this.courseCrowns, required this.firstUnitProgress, required this.noOfUnits,
  });

  final String courseName;
  final int courseCrowns;
  final double firstUnitProgress;
  final int noOfUnits;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 286,
      margin: const EdgeInsets.only(bottom: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                courseName,
                style: const TextStyle(fontSize: 35),
              ),
              IconTextContainer(
                  width: 84,
                  image: "icons/crown.png",
                  color: designColors[11],
                  padding: 0,
                  text: "$courseCrowns/40",
                  fontSize: 20)
            ],
          ),
          SizedBox(
            height: 227,
            child: GridView.count(
              crossAxisCount: 1,
              mainAxisSpacing: 21,
              childAspectRatio: 1 / 0.79,
              scrollDirection: Axis.horizontal,
              children: List.generate(noOfUnits, (index) => (index == 0) ? Unit(unitNumber: 1, unitProgress: firstUnitProgress) : const LockedUnit()),
            ),
          ),
        ],
      ),
    );
  }
}