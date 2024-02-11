import 'package:flutter/material.dart';

class VerbalSkills extends StatefulWidget {
  const VerbalSkills({super.key});

  @override
  State<VerbalSkills> createState() => _VerbalSkillsState();
}

class _VerbalSkillsState extends State<VerbalSkills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(children: [
          SizedBox(
            width: 20,
          ),
          Text(
            'Verbal skills',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Image(
            image: AssetImage('assets/Vector.png'),
          ),
          Text(
            '3',
            style: TextStyle(fontSize: 25, color: Colors.orange),
          ),
          SizedBox(
            width: 20,
          ),
          Image(image: AssetImage('assets/hg.png')),
          Text(
            '213',
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
        ]),
        backgroundColor: Color.fromARGB(0, 69, 62, 62),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 128,
              width: 211,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Column(
                children: [
                  const Text(
                    "Unit 1",
                    style: TextStyle(fontSize: 30),
                  ),
                  Image(
                    image: AssetImage('assets/Completion (2).png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.grey,
                      width: 8,
                    ),
                  ),
                  child: Center(
                      child: Image(
                          image: AssetImage('assets/Hands Pencil 1.png'))),
                ),
                onTap: () {},
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.grey,
                        width: 8,
                      ),
                    ),
                    child: Center(
                        child:
                            Image(image: AssetImage('assets/Hands Book.png'))),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.grey,
                        width: 8,
                      ),
                    ),
                    child: Center(
                        child: Image(
                            image: AssetImage('assets/Dayflow Bike.png'))),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            Center(
              child: InkWell(
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.grey,
                      width: 8,
                    ),
                  ),
                  child:
                      Center(child: Image(image: AssetImage('assets/jg.png'))),
                ),
                onTap: () {},
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.grey,
                        width: 8,
                      ),
                    ),
                    child: Center(
                        child: Image(image: AssetImage('assets/jg.png'))),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.grey,
                        width: 8,
                      ),
                    ),
                    child: Center(
                        child: Image(image: AssetImage('assets/jg.png'))),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
