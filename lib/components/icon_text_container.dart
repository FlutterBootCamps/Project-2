import 'package:flutter/material.dart';

class IconTextContainer extends StatelessWidget {
  const IconTextContainer(
      {super.key,
      required this.width,
      required this.image,
      required this.color,
      required this.padding,
      required this.text,
      required this.fontSize});

  final double width;
  final Widget image;
  final String text;
  final Color color;
  final double padding;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image,
          Padding(
            padding: EdgeInsets.only(bottom: padding),
            child: Text(
              text,
              style: TextStyle(color: color, fontSize: fontSize),
            ),
          )
        ],
      ),
    );
  }
}
