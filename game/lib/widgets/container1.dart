import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget card(double progress, BuildContext context) {
  return Container(
    // containing image and text
    padding: const EdgeInsets.all(10),
    height: 227,
    width: 179,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(139, 196, 196, 196)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Unit 1", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
        const SizedBox(
              height: 100,
            ),
        Stack(alignment: Alignment.bottomLeft, children: [
          SizedBox(
            height: 17,
            width: 158,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    progressColor: const Color.fromARGB(255, 236, 193, 85),
                    percent: progress,
                    barRadius: const Radius.circular(10),
                    addAutomaticKeepAlive: true,
                    
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/crown.png",
            height: 27,
            width: 31,
          ),
        ]),
      ],
    ),

    // Column(children: [
    //   Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         const Text("Unit 1",
    //             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
            // const SizedBox(
            //   height: 120,
            // ),
    //         Center(
    //             child: LinearPercentIndicator(
    //           lineHeight: 15,
    //           progressColor: const Color.fromARGB(255, 236, 193, 85),
    //           percent: progress,
    //           barRadius: const Radius.circular(10),
    //           leading: Image.asset("assets/crown.png"),
    //           addAutomaticKeepAlive: true,
    //         ))
    //       ],
    //     ),
    //   )
    // ])
  );
}
