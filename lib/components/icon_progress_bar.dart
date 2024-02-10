import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class IconProgressBar extends StatelessWidget {
  const IconProgressBar({
    super.key,
    required this.iconImage,
    required this.progress,
    required this.padding,
  });

  final String iconImage;
  final double progress;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.centerLeft, children: [
      Padding(
        padding: padding,
        child: LinearProgressIndicator(
          backgroundColor: designColors[13],
          color: designColors[14],
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          minHeight: 14,
          value: progress,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
        ),
        child: Image.asset(
          iconImage,
        ),
      )
    ]);
  }
}
