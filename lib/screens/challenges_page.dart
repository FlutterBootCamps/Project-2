import 'package:flutter/material.dart';

class MyChallenges extends StatefulWidget {
  const MyChallenges({super.key});

  @override
  State<MyChallenges> createState() => _MyChallengesState();
}

class _MyChallengesState extends State<MyChallenges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar for Challenges screen
      appBar: AppBar(
        title: const Text("Challenges",
            style: TextStyle(fontSize: 30, fontFamily: 'Roboto')),
        backgroundColor: const Color(0xffE5E5E5),
        centerTitle: true,
      ),
      // Main Body with Challenge Content
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            // Challenge Card 1
            const SizedBox(height: 15),
            Container(
              width: 378,
              height: 116,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffdfdad8), width: 3)),
              child: Row(
                children: [
                  Image.asset('images/Group (1).png'),
                  const SizedBox(width: 15),
                  const Expanded(
                    child: Column(
                      children: [
                        Text("Complete 1000 word streak",
                            style: TextStyle(fontSize: 20)),
                        Text("Win 1000XP along with 300 diamonds.",
                            style: TextStyle(fontSize: 15))
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Spacing
            const SizedBox(height: 30),
            // Achievements Section Title
            const Text("Achievements",
                style: TextStyle(fontSize: 30, fontFamily: 'Roboto')),
            // Spacing
            const SizedBox(height: 30),
            // Achievement Card 1
            Container(
              width: 378,
              height: 116,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffdfdad8), width: 3)),
              child: Row(
                children: [
                  Image.asset('images/Stuck at Home Vertical Painting 1.png'),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lorem lpsum",
                            style: TextStyle(fontSize: 20)),
                        Text("is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(fontSize: 19))
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Spacing
            const SizedBox(height: 50),
            // Achievement Card 2
            Container(
              width: 378,
              height: 116,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffdfdad8), width: 3)),
              child: Row(
                children: [
                  Image.asset('images/P.png'),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lorem lpsum",
                            style: TextStyle(fontSize: 20)),
                        Text("is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(fontSize: 19))
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Spacing
            const SizedBox(height: 50),
            // Achievement Card 3
            Container(
              width: 378,
              height: 116,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffdfdad8), width: 3)),
              child: Row(
                children: [
                  Image.asset('images/Pebble People Basketball.png'),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lorem lpsum",
                            style: TextStyle(fontSize: 20)),
                        Text("is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(fontSize: 19))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
