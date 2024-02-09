import 'package:educational_kids_game/components/icon_progress_bar.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class Unit extends StatelessWidget {
  const Unit({
    super.key, required this.unitNumber, required this.unitProgress,
  });

  final int unitNumber;
  final double unitProgress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 179,
        height: 227,
        padding: const EdgeInsets.only(
            right: 12, left: 12, top: 22, bottom: 10),
        decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.all(Radius.circular(20)),
          color: designColors[12],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Unit $unitNumber",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            IconProgressBar(
              iconImage: "icons/crown_bordered.png",
              progress: unitProgress,
              padding: const EdgeInsets.only(left: 6),
            )
          ],
        ),
      ),
    );
  }
}