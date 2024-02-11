// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_4/screen/verbal_skills_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Image(
              image: AssetImage('assets/Vector.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '3',
              style: TextStyle(fontSize: 25, color: Colors.orange),
            ),
            SizedBox(
              width: 50,
            ),
            Image(
              image: AssetImage('assets/Vector (1).png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '1432XP',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 27, 79, 122)),
            ),
            SizedBox(
              width: 30,
            ),
            Image(
              image: AssetImage('assets/Heart.png'),
            ),
            SizedBox(
              width: 30,
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(233, 232, 231, 255),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Logical reasoning',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image(
                        image: AssetImage('assets/Vec.png'),
                      ),
                      Expanded(
                          child: Text(
                        '18/40',
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                      ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        height: 227,
                        width: 179,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Unit 1",
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(
                              height: 125,
                            ),
                            Image(
                              image: AssetImage('assets/Completion.png'),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerbalSkills(),
                            ));
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      child: Container(
                        height: 227,
                        width: 179,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        child: Image(
                          image: AssetImage('assets/Vector99.png'),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Artistic thinking',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Image(
                        image: AssetImage('assets/Vec.png'),
                      ),
                      Expanded(
                          child: Text(
                        '35/40',
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                      ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        height: 227,
                        width: 179,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Unit 1",
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(
                              height: 125,
                            ),
                            Image(
                              image: AssetImage('assets/Completion (1).png'),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerbalSkills(),
                            ));
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      child: Container(
                        height: 227,
                        width: 179,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        child: Image(
                          image: AssetImage('assets/Vector99.png'),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Verbal skills',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Image(
                        image: AssetImage('assets/Vec.png'),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Text(
                        '3/40',
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                      ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        height: 227,
                        width: 179,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Unit 1",
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(
                              height: 125,
                            ),
                            Image(
                              image: AssetImage('assets/Completion (2).png'),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerbalSkills(),
                            ));
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      child: Container(
                        height: 227,
                        width: 179,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        child: Image(
                          image: AssetImage('assets/Vector99.png'),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
