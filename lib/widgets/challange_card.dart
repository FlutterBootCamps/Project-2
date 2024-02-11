
import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({super.key, required this.path, required this.title, required this.description});

  //Parameters for each challenge card
  final String path;
  final String title;
  final String description;



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xffE2DCDA), width: 3),
      ),
      child: Row(
        children: [
          Image.asset(path, height: 90,width: 116,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
                Text(description,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
