import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class LockedUnit extends StatelessWidget {
  const LockedUnit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179,
      height: 227,
      padding: const EdgeInsets.only(
          right: 12, left: 12, top: 22, bottom: 10),
      decoration: BoxDecoration(
        borderRadius:
            const BorderRadius.all(Radius.circular(20)),
        color: designColors[12],
      ),
      child: Center(
        child: Image.asset("icons/lock_big.png",),
      ),
    );
  }
}