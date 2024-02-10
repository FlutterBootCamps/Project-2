import 'package:flutter/material.dart';
import 'package:project_2_saad_alharbi/component/custom_progress_bar.dart';
import 'package:project_2_saad_alharbi/pages/skill_page.dart';

class CourseContainer extends StatefulWidget {
  const CourseContainer(
      {Key? key, required this.unitTitle, required this.value})
      : super(key: key); // corrected constructor
  final String unitTitle;
  final double value;

  @override
  State<CourseContainer> createState() => _CourseContainerState();
}

class _CourseContainerState extends State<CourseContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SkillPage(
                  unitTitle: "${widget.unitTitle}")), // passed the unitTitle
        );
      },
      child: Container(
        width: 180,
        height: 230,
        decoration: BoxDecoration(
          color: Color(0xffe9e8e7),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.unitTitle,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20), // Reduced SizedBox height
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'images/crown_icon.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 120,
                      height: 15,
                        child: CustomPaint(
                      painter: CustomProgressBar(value: widget.value),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
