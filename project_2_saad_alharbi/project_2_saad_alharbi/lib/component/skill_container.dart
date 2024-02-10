import 'package:flutter/material.dart';

class SkillContainer extends StatelessWidget {
  String imagePath;
  String title;
  late String number;

  SkillContainer(
      {super.key,
      required this.imagePath,
      required this.number,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          width: 130,
          child: Stack(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 187, 183, 183),
                  borderRadius: BorderRadius.circular(180),
                ),
              ),
              Center(
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      color: const Color(0xff72BFC7),
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 5)),
                  child: Image.asset(imagePath, width: 30, height: 30,),
                ),
              ),
              Align(
                alignment: const Alignment(1, 0.5),
                child: Wrap(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("images/crown_icon.png"),
                        Text(number),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
