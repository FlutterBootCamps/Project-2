import 'package:educational_kids_game/components/icon_progress_bar.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class UnitInfoContainer extends StatelessWidget {
  const UnitInfoContainer({
    super.key,
    required this.noOfCrowns, required this.unitProgress,
  });

  final int noOfCrowns;
  final double unitProgress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
        Container(
          margin: const EdgeInsets.only(top: 58),
              width: 211,
              height: 128,
              decoration: BoxDecoration(color: designColors[16], borderRadius: BorderRadius.circular(20), border: Border.all(color: designColors[17], width: 3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Unit 1", style: TextStyle(fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 107,
                        child: IconProgressBar(iconImage: "icons/crown_bordered.png", progress: unitProgress, padding: const EdgeInsets.only(left: 18))),
                      Text("$noOfCrowns/40", style: TextStyle(color: designColors[18]),)
                    ],
                  )
    
                ],
              ),
            ),
            Image.asset("images/horse.png")
        ]
      ),
    );
  }
}