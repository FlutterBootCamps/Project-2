import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class LessonContainer extends StatelessWidget {
  const LessonContainer({
    super.key, required this.image, required this.label, required this.crownText,
  });

  final String image;
  final String label;
  final String crownText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                color: designColors[13],
                borderRadius:
                    const BorderRadius.all(Radius.circular(70))),
          ),
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.all(Radius.circular(60)),
                color: designColors[19],
                border: Border.all(
                  width: 6,
                  color: designColors[10],
                )),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 100),
            child: Image.asset(
              "icons/crown_bordered_2.png",
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 65, left: 100),
            child: Text(
              crownText,
            ),
          )
        ]),
        Text(
          label,
          style:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
