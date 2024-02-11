import 'package:flutter/material.dart';
import 'package:game/widgets/container3.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 245, 242),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(209, 229, 229, 229),
        title: const Text(
          "Challenges",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  width: 378,
                  height: 117,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                          color: const Color.fromARGB(24, 0, 0, 0), width: 3)),
                  child: Row(children: [
                    Image.asset("assets/image.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      children: [
                        SizedBox(
                            width: 219,
                            height: 56,
                            child: Text(
                              "Complete 1000 word streak",
                              style: TextStyle(fontSize: 20),
                            )),
                        SizedBox(
                            width: 214,
                            height: 49,
                            child: Text(
                              "Win 1000XP along with 300 diamonds.",
                              style: TextStyle(fontSize: 15),
                            ))
                      ],
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                " Achievements",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              challenge(
                  image: "assets/Painting.png",
                  description:
                      "is simply dummy text of the printing and typesetting industry.",
                  title: "Lorem Ipsum ",
                  context: context),
                  const SizedBox(
                height: 20,
              ),
              challenge(
                  image: "assets/ppl.png",
                  description:
                      "is simply dummy text of the printing and typesetting industry.",
                  title: "Lorem Ipsum ",
                  context: context),
                  const SizedBox(
                height: 20,
              ),
              challenge(
                  image: "assets/Basketball.png",
                  description:
                      "is simply dummy text of the printing and typesetting industry.",
                  title: "Lorem Ipsum ",
                  context: context),
            ],
          ),
        ),
      ),
    );
  }
}
