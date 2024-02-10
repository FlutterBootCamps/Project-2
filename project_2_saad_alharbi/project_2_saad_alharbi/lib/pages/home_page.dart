import 'package:flutter/material.dart';
import 'package:project_2_saad_alharbi/component/course_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffe9e8e7),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Image.asset('images/Fire_icon.png', fit: BoxFit.cover),
                const Text(
                  " 3",
                  style: TextStyle(color: Color(0xffEB9F4A), fontSize: 25),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset('images/treasure_icon.png'),
                const Text(
                  " 1432 XP",
                  style: TextStyle(color: Color(0xff338F9B), fontSize: 25),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.favorite,
                  size: 30,
                  color: Color(0xffDC3F00),
                ),
                Image.asset('images/infinity_icon.png'),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Center(
            child: ListView(
              children: [
                buildLabelContainer("Logical reasoning", "18/40"),
                const SizedBox(height: 10),
                buildCourseContainer("Unit 1", 0.4),
                const SizedBox(height: 10),
                buildLabelContainer("Artistic thinking", "35/40"),
                const SizedBox(height: 10),
                buildCourseContainer("Unit 1", 0.8),
                const SizedBox(height: 10),
                buildLabelContainer("Verbal skills", "3/40"),
                const SizedBox(height: 10),
                buildCourseContainer("Unit 1", 0.2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLabelContainer(String title, String subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 35),
        ),
        Row(
          children: [
            Image.asset('images/crown_icon.png'),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildCourseContainer(String unitTitle, double value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CourseContainer(
          unitTitle: unitTitle,
          value: value,
        ), // calling CourseContainer class here
        Container(
          width: 180,
          height: 230,
          decoration: BoxDecoration(
            color: Color(0xffe9e8e7),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image.asset("images/lock_icon.png"),
        ),
      ],
    );
  }
}
