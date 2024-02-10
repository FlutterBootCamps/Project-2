import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "M",
            style: TextStyle(
                fontFamily: "Ribeye", fontSize: 40, color: designColors[3]),
            children: [
          TextSpan(
              text: "E",
              style: TextStyle(
                  fontFamily: "Ribeye", fontSize: 40, color: designColors[4])),
          TextSpan(
              text: "N",
              style: TextStyle(
                  fontFamily: "Ribeye", fontSize: 40, color: designColors[5])),
          TextSpan(
              text: "T",
              style: TextStyle(
                  fontFamily: "Ribeye", fontSize: 40, color: designColors[6])),
          TextSpan(
              text: "A",
              style: TextStyle(
                  fontFamily: "Ribeye", fontSize: 40, color: designColors[14])),
          TextSpan(
              text: "L ",
              style: TextStyle(
                  fontFamily: "Ribeye", fontSize: 40, color: designColors[4])),
          TextSpan(
              text: "^",
              style: TextStyle(
                  fontFamily: "Ribeye", fontSize: 40, color: designColors[5])),
          TextSpan(
              text: "u",
              style: TextStyle(
                  fontFamily: "Ribeye", fontSize: 40, color: designColors[6])),
          TextSpan(
              text: "p",
              style: TextStyle(
                  fontFamily: "Ribeye", fontSize: 40, color: designColors[14])),
          TextSpan(
              text: "^",
              style: TextStyle(
                  fontFamily: "Ribeye", fontSize: 40, color: designColors[4])),
        ]));
  }
}
