import 'package:flutter/material.dart';

class ChallengesScreenView extends StatelessWidget {
  const ChallengesScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Challenges"),
        backgroundColor: Color.fromRGBO(229, 229, 229, 0.8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ChallengeContainer(
              challengeImage: "lib/image/Group.png",
              challengeTitle: "Complete 1000 word streak",
              challengeDescription: "Win 1000XP along with 300 diamonds.",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Achievements",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            ChallengeContainer(
              challengeImage: "lib/image/Stuck at Home Vertical Painting 1.png",
              challengeTitle: "Complete 1000 word streak",
              challengeDescription: "Win 1000XP along with 300 diamonds.",
            ),
            ChallengeContainer(
              challengeImage: "lib/image/Pebble People Plant 2.png",
              challengeTitle: "Complete 1000 word streak",
              challengeDescription: "Win 1000XP along with 300 diamonds.",
            ),
            ChallengeContainer(
              challengeImage: "lib/image/Pebble People Basketball.png",
              challengeTitle: "Complete 1000 word streak",
              challengeDescription: "Win 1000XP along with 300 diamonds.",
            ),
          ],
        ),
      ),
    );
  }
}

class ChallengeContainer extends StatelessWidget {
  final String challengeTitle;
  final String challengeDescription;
  final String challengeImage;

  const ChallengeContainer({
    required this.challengeTitle,
    required this.challengeDescription,
    required this.challengeImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1)),
        ),
        width: MediaQuery.of(context).size.width * 0.96,
        height: MediaQuery.of(context).size.height * 0.18,
        child: Row(
          children: [
            SizedBox(width: 85, height: 85, child: Image.asset(challengeImage)),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                    text: challengeTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  TextSpan(
                    text: '\n$challengeDescription',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
