import 'package:flutter/material.dart';

class ChallengeesScreen extends StatefulWidget {
  const ChallengeesScreen({super.key});

  @override
  State<ChallengeesScreen> createState() => _ChallengeesScreenState();
}

class _ChallengeesScreenState extends State<ChallengeesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Challenges',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ),
        backgroundColor: Color(0XC4C4C4),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
              height: 116,
              width: 378,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/Group.png')),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Complateb 1000 word streak",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Win 100XP along with 300 diamonds.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 25,
          ),
          Text(
            'Achievements',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              height: 116,
              width: 378,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Image(
                      image: AssetImage(
                          'assets/Stuck at Home Vertical Painting 1.png')),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem Ipusm",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                          child: Text(
                            "is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 25,
          ),
          Container(
              height: 116,
              width: 378,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/Pebble People Plant 2.png')),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem Ipusm",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                          child: Text(
                            "is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 25,
          ),
          Container(
              height: 116,
              width: 378,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Image(
                      image: AssetImage('assets/Pebble People Basketball.png')),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem Ipusm",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                          child: Text(
                            "is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
