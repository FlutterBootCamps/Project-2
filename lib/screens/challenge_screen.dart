import 'package:flutter/material.dart';
import 'package:maram_project_2/widgets/challange_card.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xffE5E5E5),
        title: const Text("Challenges"),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //show challenge cards using ChallengeCard widget with specific paramets
              ChallengeCard(path: "assets/images/one.png", title: "Lorem Ipsum ", description: "is simply dummy text of the printing and typesetting industry."),
              SizedBox(height: 30,),
              Text("Achievements", style: TextStyle(fontSize: 30)),
              SizedBox(height: 30,),
              ChallengeCard(path: "assets/images/two.png", title: "Lorem Ipsum ", description: "is simply dummy text of the printing and typesetting industry."),
              SizedBox(height: 30,),
              ChallengeCard(path: "assets/images/three.png", title: "Lorem Ipsum ", description: "is simply dummy text of the printing and typesetting industry."),
              SizedBox(height: 30,),
              ChallengeCard(path: "assets/images/four.png", title: "Lorem Ipsum ", description: "is simply dummy text of the printing and typesetting industry."),


            ],
          ),
        ),
      ),
    );
  }
}

