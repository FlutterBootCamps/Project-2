import 'package:flutter/material.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffe9e8e7),
        title: const Text(
          "Challenges",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildChallengeContainer(
              'images/Group_img.png',
              "Complete 1000 word streak",
              "Win 1000XP along with 300 diamonds.",
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Achievements",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
            buildChallengeContainer(
              'images/Painting_img.png',
              "Lorem Ipsum",
              "is simply dummy text of the printing and typesetting industry.",
            ),
            buildChallengeContainer(
              'images/Pebble_img.png',
              "Lorem Ipsum",
              "is simply dummy text of the printing and typesetting industry.",
            ),
            buildChallengeContainer(
              'images/Basketball_img.png',
              "Lorem Ipsum",
              "is simply dummy text of the printing and typesetting industry.",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChallengeContainer(
    String imagePath,
    String title,
    String subtitle,
  ) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 380,
      constraints: BoxConstraints(minHeight: 120),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffe9e8e7),
          style: BorderStyle.solid,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container( margin: EdgeInsets.only(right: 20),
            width: 110, child: Image.asset(imagePath)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
