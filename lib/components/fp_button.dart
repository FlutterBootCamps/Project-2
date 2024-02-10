import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class FPButton extends StatelessWidget {
  const FPButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: designColors[0]),
            )));
  }
}
