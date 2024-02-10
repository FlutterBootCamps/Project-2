import 'package:educational_kids_game/components/icon_text_container.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class GoToButton extends StatelessWidget {
  const GoToButton({
    super.key,
    required this.image,
    required this.label,
  });

  final Image image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 378,
        height: 69,
        padding: const EdgeInsets.only(left: 32.33, right: 22.38),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(width: 3, color: designColors[20])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextContainer(
                width: 200,
                image: Image.asset("images/celebrate.png"),
                color: designColors[0],
                padding: 0,
                text: "Friends updates",
                fontSize: 20),
            Icon(
              Icons.arrow_forward_ios,
              color: designColors[22],
            )
          ],
        ),
      ),
    );
  }
}
