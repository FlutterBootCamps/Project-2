import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class StatsHolder extends StatelessWidget {
  const StatsHolder({
    super.key,
    required this.image,
    required this.stat,
    required this.statDescription,
  });

  final Widget image;
  final String stat;
  final String statDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179,
      height: 61,
      padding: const EdgeInsets.only(
        left: 17,
      ),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(width: 3, color: designColors[20])),
      child: Row(
        children: [
          image,
          const SizedBox(
            width: 14,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                stat,
                style: TextStyle(fontSize: 20, color: designColors[0]),
              ),
              Text(
                statDescription,
                style: TextStyle(fontSize: 15, color: designColors[23]),
              )
            ],
          )
        ],
      ),
    );
  }
}
