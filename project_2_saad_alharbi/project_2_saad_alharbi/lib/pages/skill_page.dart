import 'package:flutter/material.dart';
import 'package:project_2_saad_alharbi/component/custom_progress_bar.dart';

import '../component/skill_container.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key, required this.unitTitle});
  final String unitTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffe9e8e7),
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Text(
            "Verbal skills",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          Row(
            children: [
              Image.asset('images/crown_icon.png', fit: BoxFit.cover),
              const Text(
                " 3",
                style: TextStyle(color: Color(0xffECC055), fontSize: 25),
              ),
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.diamond,
                color: Color(0xff02A1FB),
              ),
              Text(
                " 213",
                style: TextStyle(color: Color(0xff02A1FB), fontSize: 25),
              ),
            ],
          ),
        ]),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 225,
                    width: 300,
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            width: 200,
                            height: 125,
                            decoration: BoxDecoration(
                              color: const Color(0xffe9e8e7),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 187, 183, 183),
                                  style: BorderStyle.solid,
                                  width: 3),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "$unitTitle",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset('images/crown_icon.png',
                                        fit: BoxFit.cover, width: 25),
                                    SizedBox(
                                        width: 80,
                                        height: 15,
                                        child: CustomPaint(
                                          painter:
                                              CustomProgressBar(value: 0.3),
                                        )),
                                    const Text(
                                      "  3/40",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/Beep_Horse_img.png"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SkillContainer(
                  imagePath: "images/Hands_Pencil_img.png",
                  number: "1",
                  title: "intro"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SkillContainer(
                      imagePath: "images/Hands_Book_img.png",
                      number: "1",
                      title: "Phrases"),
                  SkillContainer(
                      imagePath: "images/Dayflow_Bike_img.png",
                      number: "1",
                      title: "Travel"),
                ],
              ),
              SkillContainer(
                  imagePath: "images/lock_icon.png",
                  number: "",
                  title: ""),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SkillContainer(
                      imagePath: "images/lock_icon.png",
                      number: "",
                      title: ""),
                  SkillContainer(
                      imagePath: "images/lock_icon.png",
                      number: "",
                      title: ""),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
