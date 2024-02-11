import 'package:flutter/material.dart';

class MyUnit extends StatelessWidget {

  // Constructor that takes the title as a parameter
  const MyUnit({super.key, required this.myTitle});

  // Title of the unit
  final String myTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myTitle),
        centerTitle: true,
        backgroundColor: Color(0xffE5E5E5),
        actions: [
          Image.asset('images/Vector.png'),
          SizedBox(width: 15),
          Text(
            "3",
            style: TextStyle(fontSize: 25, color: Color(0xffECC055)),
          ),
          SizedBox(width: 15),
          Image.asset('images/Vector (4).png'),
          SizedBox(width: 15),
          Text(
            "213",
            style: TextStyle(fontSize: 25, color: Color(0xff02A1FB)),
          ),
          SizedBox(width: 40),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 50),
            // First Unit Container
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 211,
                  height: 128,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xffE9E8E8),
                      border:
                          Border.all(color: const Color(0xffC4C4C4), width: 3)),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: -50,
                          child: Image.asset('images/Beep Beep Horse.png')),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 50),
                          Text("Unit 1",
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Roboto')),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/Vector.png',
                                width: 31,
                                height: 27,
                              ),
                              Stack(children: [
                                Container(
                                  width: 80,
                                  height: 14,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffC4C4C4),
                                      borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(10))),
                                ),
                                Container(
                                  width: 10,
                                  height: 14,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffECC055)),
                                ),
                              ]),
                              SizedBox(width: 10),
                              Text("3/40",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      color: Color(0xffb1b1b1)))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                // First Content Container
                Container(
                  height: 140,
                  width: 150,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Center(
                          child: ClipOval(
                        child: Container(
                          color: Color(0xffC4C4C4),
                          height: 140.0,
                          width: 140.0,
                        ),
                      )),
                      Center(
                        child: ClipOval(
                          child: Container(
                              height: 120.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                  color: Color(0xff72BFC7),
                                  border: Border.all(
                                      color: Colors.white, width: 5.0),
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: Image.asset(
                                      'images/Hands Pencil 1.png'))),
                        ),
                      ),
                      Positioned(
                        left: 115,
                        top: 90,
                        child: Image.asset(
                          'images/Vector.png',
                          width: 31,
                          height: 27,
                        ),
                      ),
                      Positioned(left: 125, top: 97, child: Text("1")),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text("Intro", style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                // Second and Third Content Containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 140,
                      width: 150,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Center(
                              child: ClipOval(
                            child: Container(
                              color: Color(0xffC4C4C4),
                              height: 140.0,
                              width: 140.0,
                            ),
                          )),
                          Center(
                            child: ClipOval(
                              child: Container(
                                  height: 120.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xff72BFC7),
                                      border: Border.all(
                                          color: Colors.white, width: 5.0),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Image.asset(
                                          'images/Hands Book.png'))),
                            ),
                          ),
                          Positioned(
                            left: 115,
                            top: 90,
                            child: Image.asset(
                              'images/Vector.png',
                              width: 31,
                              height: 27,
                            ),
                          ),
                          Positioned(left: 125, top: 97, child: Text("1")),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 140,
                      width: 150,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Center(
                              child: ClipOval(
                            child: Container(
                              color: Color(0xffC4C4C4),
                              height: 140.0,
                              width: 140.0,
                            ),
                          )),
                          Center(
                            child: ClipOval(
                              child: Container(
                                  height: 120.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xff72BFC7),
                                      border: Border.all(
                                          color: Colors.white, width: 5.0),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Image.asset(
                                          'images/Dayflow Bike.png'))),
                            ),
                          ),
                          Positioned(
                            left: 115,
                            top: 90,
                            child: Image.asset(
                              'images/Vector.png',
                              width: 31,
                              height: 27,
                            ),
                          ),
                          Positioned(left: 125, top: 97, child: Text("1")),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                // Fourth Content Container
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 140,
                      width: 150,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Center(
                              child: ClipOval(
                            child: Container(
                              color: Color(0xffC4C4C4),
                              height: 140.0,
                              width: 140.0,
                            ),
                          )),
                          Center(
                            child: ClipOval(
                              child: Container(
                                  height: 120.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xff72BFC7),
                                      border: Border.all(
                                          color: Colors.white, width: 5.0),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Image.asset('images/Vector (1).png'))),
                            ),
                          ),
                          Positioned(
                            left: 115,
                            top: 90,
                            child: Image.asset(
                              'images/Vector.png',
                              width: 31,
                              height: 27,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
                SizedBox(height: 20),
                // Fifth and Sixth Content Containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 140,
                      width: 150,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Center(
                              child: ClipOval(
                            child: Container(
                              color: Color(0xffC4C4C4),
                              height: 140.0,
                              width: 140.0,
                            ),
                          )),
                          Center(
                            child: ClipOval(
                              child: Container(
                                  height: 120.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xff72BFC7),
                                      border: Border.all(
                                          color: Colors.white, width: 5.0),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Image.asset('images/Vector (1).png'))),
                            ),
                          ),
                          Positioned(
                            left: 115,
                            top: 90,
                            child: Image.asset(
                              'images/Vector.png',
                              width: 31,
                              height: 27,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 140,
                      width: 150,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Center(
                              child: ClipOval(
                            child: Container(
                              color: Color(0xffC4C4C4),
                              height: 140.0,
                              width: 140.0,
                            ),
                          )),
                          Center(
                            child: ClipOval(
                              child: Container(
                                  height: 120.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xff72BFC7),
                                      border: Border.all(
                                          color: Colors.white, width: 5.0),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Image.asset('images/Vector (1).png'))),
                            ),
                          ),
                          Positioned(
                            left: 115,
                            top: 90,
                            child: Image.asset(
                              'images/Vector.png',
                              width: 31,
                              height: 27,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
