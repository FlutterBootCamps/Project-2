import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 3, color: Colors.grey.shade200))),
            child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahmed',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'ahmed99',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Joined: January 2023',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 40, // Adjust the radius as needed
                        backgroundImage: AssetImage("lib/image/Group.png"),
                      )
                    ])),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 40),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 3,
                  )),
              height: 70,
              width: MediaQuery.of(context).size.width * 0.90,
              child: Row(children: [
                Image.asset("lib/image/Vector 6.png"),
                Text("Friends updates"),
                Padding(
                  padding: EdgeInsets.only(left: 190.0),
                  child: Icon(Icons.arrow_forward_ios_sharp),
                )
              ])),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: [
                Text(
                  "Statistics",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Column(children: [
                    StattisticsConteainer(
                        StattisticsDescription: "day streak ",
                        StattisticsImage: "lib/image/Vector (1).png",
                        StattisticsTitle: "3"),
                    StattisticsConteainer(
                        StattisticsDescription: "Current League",
                        StattisticsImage: "lib/image/noto_3rd-place-medal.png",
                        StattisticsTitle: "Bronze"),
                  ]),
                  Column(children: [
                    StattisticsConteainer(
                        StattisticsDescription: "total XP ",
                        StattisticsImage: "lib/image/Vector (6).png",
                        StattisticsTitle: "1432"),
                    StattisticsConteainer(
                        StattisticsDescription: "Top 3 Finishes",
                        StattisticsImage: "lib/image/bx_medal.png",
                        StattisticsTitle: "0"),
                  ])
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Friends",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Add Friend",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.grey.shade200),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 3, color: Colors.grey.shade200))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "FOLLOWING",
                    ),
                    Text("FOLLOWERS")
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 3, color: Colors.grey.shade200))),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  CircleAvatar(
                    radius: 15, // Adjust the radius as needed
                    backgroundImage: AssetImage("lib/image/Group.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'wahb',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'xp 0',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                CircleAvatar(
                  radius: 15, // Adjust the radius as needed
                  backgroundImage: AssetImage("lib/image/Group.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ali',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'xp 2000',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ])
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1)),
              ),
              width: MediaQuery.of(context).size.width * 0.96,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 85,
                          height: 85,
                          child:
                              Image.asset("lib/image/Dayflow Black Cat.png")),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 15),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Invite your friends",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow
                                    .clip, // This line ensures clipping
                              ),
                            ),
                            TextSpan(
                              text:
                                  '\n Tell your friends it’s \n free and fun to learn on Mental up!',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 50,
                    width: 400,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "INVITE FRIENDS",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatisticContainer(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class StattisticsConteainer extends StatelessWidget {
  final String StattisticsTitle;
  final String StattisticsDescription;
  final String StattisticsImage;

  StattisticsConteainer({
    super.key,
    required this.StattisticsTitle,
    required this.StattisticsDescription,
    required this.StattisticsImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 61,
      width: 179,
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.grey.shade200)),
      child: Row(
        children: [
          Image.asset(StattisticsImage),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 15),
              children: <TextSpan>[
                TextSpan(
                  text: "      $StattisticsTitle",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.clip,
                  ),
                ),
                TextSpan(
                  text: '\n    $StattisticsDescription',
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
