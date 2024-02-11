import 'package:flutter/material.dart';

class CircleWedget extends StatelessWidget {
  //parameters for each CircleWidget
  String path;
  String text;
  String insideText;
   CircleWedget({super.key , required this.path, required this.text, required this.insideText} );
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        //using Stack here to arrange our widgets on this circle
        Stack(
          children: [
            // Widget at the bottom
            Container(
              width: 125,
              height: 125,
              decoration:
              BoxDecoration(
                  color: Color(0xffC4C4C4),
                  borderRadius: BorderRadius.circular(100)
              ),
            ),
            Positioned(
              top: 12,
              left: 12,
              right: 12,
              bottom: 12,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)
                ),
              ),
            ),
            // Widget above the first widget
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              bottom: 20,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xff72BFC7),
                    borderRadius: BorderRadius.circular(100)
                ),
              ),
            ),
            Positioned(
              top: 35,
                bottom: 35,
                left: 35,
                right: 35,
                child: Image.asset(path )
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/tag.png", width: 30,),
                  Text(insideText),
                ],
              ),
            )
            // Widget above all other widgets
          ],
        ),
        Text(text)
      ],
    );
  }
}
