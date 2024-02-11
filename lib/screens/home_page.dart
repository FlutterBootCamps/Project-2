import 'package:flutter/material.dart';
import 'package:project_2_sultan_alotaibi/screens/unit_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Text controller for the title input
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background color for the entire screen
      backgroundColor: const Color(0xfffbf5f2),
      // App Bar with a custom image title
      appBar: AppBar(
        backgroundColor: const Color(0xffE5E5E5),
        title: Image.asset('images/Header.png'),
      ),
      // Main Body with a ListView containing multiple sections
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          const SizedBox(height: 20),
          // First Section: Logical reasoning
          Row(
            children: [
              const Text("Logical reasoning",
                  style: TextStyle(fontSize: 35, fontFamily: 'Roboto')),
              const SizedBox(width: 15),
              Image.asset(
                'images/Vector.png',
                width: 31,
                height: 27,
              ),
              const Text("18/40",
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      color: Color(0xffb1b1b1)))
            ],
          ),
          const SizedBox(height: 5),
          // Units for Logical reasoning
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Unit 1 - Logical reasoning
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const MyUnit(
                          myTitle: "Logical reasoning",
                        ),
                      ),
                    );
                  });
                },
                child: Container(
                  height: 227,
                  width: 179,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffE5E1E0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Unit 1",
                          style: TextStyle(fontSize: 30, fontFamily: 'Roboto')),
                      const SizedBox(height: 130),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'images/Vector.png',
                            width: 31,
                            height: 27,
                          ),
                          // Progress bar for the unit
                          Stack(children: [
                            Container(
                              width: 125,
                              height: 14,
                              decoration: const BoxDecoration(
                                  color: Color(0xffC4C4C4),
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(10))),
                            ),
                            Container(
                              width: 50,
                              height: 14,
                              decoration:
                                  const BoxDecoration(color: Color(0xffECC055)),
                            ),
                          ]),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // Placeholder container for the second unit
              Container(
                height: 227,
                width: 181,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffE5E1E0),
                ),
                child: Image.asset(
                  'images/Vector (1).png',
                  width: 47,
                  height: 59,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Second Section: Artistic thinking
          Row(
            children: [
              const Text("Artistic thinking",
                  style: TextStyle(fontSize: 35, fontFamily: 'Roboto')),
              const SizedBox(width: 40),
              Image.asset(
                'images/Vector.png',
                width: 31,
                height: 27,
              ),
              const Text("35/40",
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      color: Color(0xffb1b1b1)))
            ],
          ),
          const SizedBox(height: 5),
          // Units for Artistic thinking
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Unit 1 - Artistic thinking
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const MyUnit(
                          myTitle: "Artistic thinking",
                        ),
                      ),
                    );
                  });
                },
                child: Container(
                  height: 227,
                  width: 179,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffE5E1E0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Unit 1",
                          style: TextStyle(fontSize: 30, fontFamily: 'Roboto')),
                      const SizedBox(height: 130),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'images/Vector.png',
                            width: 31,
                            height: 27,
                          ),
                          // Progress bar for the unit
                          Stack(children: [
                            Container(
                              width: 125,
                              height: 14,
                              decoration: const BoxDecoration(
                                  color: Color(0xffC4C4C4),
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(10))),
                            ),
                            Container(
                              width: 100,
                              height: 14,
                              decoration:
                                  const BoxDecoration(color: Color(0xffECC055)),
                            ),
                          ]),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // Placeholder container for the second unit
              Container(
                height: 227,
                width: 181,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffE5E1E0),
                ),
                child: Image.asset(
                  'images/Vector (1).png',
                  width: 47,
                  height: 59,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Third Section: Verbal skills
          Row(
            children: [
              const Text("Verbal skills",
                  style: TextStyle(fontSize: 35, fontFamily: 'Roboto')),
              const SizedBox(width: 105),
              Image.asset(
                'images/Vector.png',
                width: 31,
                height: 27,
              ),
              const Text("3/40",
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      color: Color(0xffb1b1b1)))
            ],
          ),
          const SizedBox(height: 5),
          // Units for Verbal skills
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Unit 1 - Verbal skills
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const MyUnit(
                          myTitle: "Verbal skills",
                        ),
                      ),
                    );
                  });
                },
                child: Container(
                  height: 227,
                  width: 179,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffE5E1E0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Unit 1",
                          style: TextStyle(fontSize: 30, fontFamily: 'Roboto')),
                      const SizedBox(height: 130),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'images/Vector.png',
                            width: 31,
                            height: 27,
                          ),
                          // Progress bar for the unit
                          Stack(children: [
                            Container(
                              width: 125,
                              height: 14,
                              decoration: const BoxDecoration(
                                  color: Color(0xffC4C4C4),
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(10))),
                            ),
                            Container(
                              width: 15,
                              height: 14,
                              decoration:
                                  const BoxDecoration(color: Color(0xffECC055)),
                            ),
                          ]),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // Placeholder container for the second unit
              Container(
                height: 227,
                width: 181,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffE5E1E0),
                ),
                child: Image.asset(
                  'images/Vector (1).png',
                  width: 47,
                  height: 59,
                ),
              ),
            ],
          ),
          // Spacing at the bottom of the screen
          SizedBox(height: 30)
        ]),
      ),
    );
  }
}
