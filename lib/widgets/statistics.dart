import 'package:flutter/material.dart';

class StatisticsWedget extends StatelessWidget {

  //parameters for each StatisticsWedget
  Widget image;
  String description;
  String statistic;
  StatisticsWedget({super.key , required this.image , required this.description, required this.statistic});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 179,
      height: 61,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xffE2DCDA) , width: 3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            image,
            const SizedBox(
              width: 10,
            ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(statistic , style: const TextStyle(fontSize: 17),),
                Text(description, style: const TextStyle(fontSize: 12 , color: Colors.grey),)
              ],
            )

          ],
        ),
      ),
    );
  }
}
