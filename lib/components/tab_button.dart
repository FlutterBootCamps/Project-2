import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.label,
    required this.isSelected,
  });

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //To Setup for future clickability
      child: Container(
        width: 185,
        height: 39,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 3,
                    color:
                        (isSelected) ? designColors[15] : designColors[20]))),
        child: Center(
            child: Text(
          label,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: (isSelected) ? designColors[15] : designColors[21]),
        )),
      ),
    );
  }
}
