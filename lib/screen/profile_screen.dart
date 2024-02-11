import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profaile',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: const Color(0XE5E5E5),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 380,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.5, color: Colors.grey),
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nidhi Pandya',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          'Nidhi12',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 15,
                              color: Colors.grey,
                            ),
                            Text(
                              'Joined March 2022',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Image(image: AssetImage('assets/Ellipse 1.png'))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Container(
                height: 69,
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
                    Image(image: AssetImage('assets/DD.png')),
                    Text(
                      'Frindes Updates!',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Icon(
                      Icons.arrow_right,
                      size: 45,
                      color: Colors.grey,
                    ),
                  ],
                ),

                // ),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Statistics',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 61,
                  width: 179,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image(image: AssetImage('assets/Vector.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Day Streak',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 61,
                  width: 179,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image(image: AssetImage('assets/Vector6.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1423',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Total XP',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 61,
                  width: 179,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image(image: AssetImage('assets/noto_3rd-place-medal.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bronze',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Current League',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 61,
                  width: 179,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image(image: AssetImage('assets/bx_medal.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '0',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Top 3 Finishes',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Friends',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    'ADD FRIENDS',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
            Container(child: Image(image: AssetImage('assets/Frame 6.png'))),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 228,
              width: 378,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image(
                              image:
                                  AssetImage('assets/Dayflow Black Cat.png')),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Invite your friends",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Tell your friends it’s free and fun to learn on Mental up!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 47,
                      width: 321,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'INVITE FRIENDS',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
