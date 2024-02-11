import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 245, 242),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(209, 229, 229, 229),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                  height: 30,
                  width: 188,
                  child: Text("Verbal skills",
                      style: TextStyle(color: Colors.black, fontSize: 30))),
              const SizedBox(width: 10),
              Image.asset("assets/crown.png"),
              const SizedBox(width: 10),
              const Text("3",
                  style: TextStyle(color: Color.fromARGB(255, 236, 193, 85))),
              const SizedBox(width: 10),
              Image.asset(
                "assets/diamond.png",
              ),
              const SizedBox(width: 10),
              const Text("213",
                  style: TextStyle(color: Color.fromARGB(255, 2, 160, 251))),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(50),
                      width: 211,
                      height: 128,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 232, 232),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                              color: const Color.fromARGB(29, 0, 0, 0),
                              width: 3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(height: 35),
                          const Text("Unit 1", style: TextStyle(fontSize: 25)),
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
                                      progressColor: const Color.fromARGB(
                                          255, 236, 193, 85),
                                      percent: 0.1,
                                      barRadius: const Radius.circular(10),
                                      addAutomaticKeepAlive: true,
                                      trailing: const Text(
                                        "3/40",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(125, 0, 0, 0)),
                                      ),
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
                    ),
                    Image.asset("assets/horse.png"),
                  ],
                ),
                Stack(alignment: Alignment.bottomRight, children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Icon(Icons.circle,
                          color: Color.fromARGB(255, 114, 190, 199), size: 120),
                      Image.asset("assets/Pencil.png"),
                      const SizedBox(
                        width: 120,
                        height: 120,
                        child: CircularProgressIndicator(
                          backgroundColor: Color.fromARGB(255, 196, 196, 196),
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                          value: 0.0,
                          strokeWidth: 9,
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/crown.png"),
                  Text("1   ")
                ]),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Intro",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(alignment: Alignment.bottomRight, children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Icon(Icons.circle,
                              color: Color.fromARGB(255, 114, 190, 199),
                              size: 120),
                          Image.asset("assets/Book.png"),
                          const SizedBox(
                            width: 120,
                            height: 120,
                            child: CircularProgressIndicator(
                              backgroundColor:
                                  Color.fromARGB(255, 196, 196, 196),
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                              value: 0.0,
                              strokeWidth: 9,
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/crown.png"),
                      Text("1   ")
                    ]),
                    const SizedBox(
                      width: 30,
                    ),
                    Stack(alignment: Alignment.bottomRight, children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Icon(Icons.circle,
                              color: Color.fromARGB(255, 114, 190, 199),
                              size: 120),
                          Image.asset("assets/Bike.png"),
                          const SizedBox(
                            width: 120,
                            height: 120,
                            child: CircularProgressIndicator(
                              backgroundColor:
                                  Color.fromARGB(255, 196, 196, 196),
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                              value: 0.0,
                              strokeWidth: 9,
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/crown.png"),
                      Text("1   ")
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Phrases",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Travel",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(alignment: Alignment.bottomRight, children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Icon(Icons.circle,
                          color: Color.fromARGB(255, 114, 190, 199), size: 120),
                      Image.asset(
                        "assets/lock.png",
                        width: 33,
                        height: 64,
                      ),
                      const SizedBox(
                        width: 120,
                        height: 120,
                        child: CircularProgressIndicator(
                          backgroundColor: Color.fromARGB(255, 196, 196, 196),
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                          value: 0.0,
                          strokeWidth: 9,
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/crown.png"),
                ]),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(alignment: Alignment.bottomRight, children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Icon(Icons.circle,
                              color: Color.fromARGB(255, 114, 190, 199),
                              size: 120),
                          Image.asset(
                            "assets/lock.png",
                            width: 33,
                            height: 64,
                          ),
                          const SizedBox(
                            width: 120,
                            height: 120,
                            child: CircularProgressIndicator(
                              backgroundColor:
                                  Color.fromARGB(255, 196, 196, 196),
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                              value: 0.0,
                              strokeWidth: 9,
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/crown.png"),
                    ]),
                    const SizedBox(
                      width: 30,
                    ),
                    Stack(alignment: Alignment.bottomRight, children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Icon(Icons.circle,
                              color: Color.fromARGB(255, 114, 190, 199),
                              size: 115),
                          Image.asset("assets/lock.png", width: 33, height: 64),
                          const SizedBox(
                            width: 115,
                            height: 115,
                            child: CircularProgressIndicator(
                              backgroundColor:
                                  Color.fromARGB(255, 196, 196, 196),
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                              value: 0.0,
                              strokeWidth: 9,
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/crown.png"),
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
