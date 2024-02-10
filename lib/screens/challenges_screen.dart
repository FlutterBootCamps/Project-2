import 'package:educational_kids_game/components/info_container.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: designColors[10],
      appBar: AppBar(
          toolbarHeight: 71,
          backgroundColor: designColors[9],
          centerTitle: true,
          title: const Text("Challenges",
              style: TextStyle(
                fontSize: 30,
              ))),
      body: SafeArea(
          child: Padding(
        padding:
            const EdgeInsets.only(top: 31, bottom: 30, left: 25, right: 25),
        child: ListView(
          children: [
            const InfoContainer(
              image: "images/reading.png",
              title: "Complete 1000 word streak",
              description: "Win 1000XP along with 300 diamonds.",
              boldTitle: false,
            ),
            const SizedBox(
              height: 31,
            ),
            Text("Achievements",
                style: TextStyle(fontSize: 30, color: designColors[0])),
            const SizedBox(
              height: 31,
            ),
            const SizedBox(
              height: 410,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoContainer(
                    image: "images/painting.png",
                    title: "Lorem Ipsum",
                    description:
                        "is simply dummy text of the printing and typesetting industry.",
                    boldTitle: true,
                  ),
                  InfoContainer(
                    image: "images/cactus.png",
                    title: "Lorem Ipsum",
                    description:
                        "is simply dummy text of the printing and typesetting industry.",
                    boldTitle: true,
                  ),
                  InfoContainer(
                    image: "images/basketball.png",
                    title: "Lorem Ipsum",
                    description:
                        "is simply dummy text of the printing and typesetting industry.",
                    boldTitle: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
