import 'package:flutter/material.dart';
import 'package:maram_project_2/widgets/follow_row.dart';

import '../widgets/statistics.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //this var for show following list or followers list
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xffE5E5E5),
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nidhi Pandya",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Nidhi12",
                        style: TextStyle(fontSize: 20, color: Color(0xff7E7A79)),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Color(0xff7E7A79),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Joined March 2022"),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset('assets/images/Ellipse.png', width: 100)
                ],
              ),
              const Divider(
                color: Color(0xffE3DEDC), // Optional: Set the color of the line
                thickness: 3, // Optional: Set the thickness of the line
                height: 20, // Optional: Set the height of the line
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xffE2DCDA), width: 3), // Set the color of the border
                        borderRadius: BorderRadius.circular(20), // Set the radius of the border
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/cel.png',
                        width: 60,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Friends updates",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      const Icon(
                        Icons.navigate_next,
                        color: Color(0xffD3CDCB),
                        size: 38,
                      )
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Statistics", style: TextStyle(fontSize: 25)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatisticsWedget(
                    image: Image.asset(
                      'assets/images/fire.png',
                      width: 35,
                    ),
                    description: "Day Streak",
                    statistic: "3",
                  ),
                  StatisticsWedget(
                    image: Image.asset(
                      'assets/images/power.png',
                      width: 30,
                    ),
                    description: "Total XP",
                    statistic: "1432",
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatisticsWedget(
                    image: Image.asset(
                      'assets/images/bronse.png',
                      width: 35,
                    ),
                    description: "Current League",
                    statistic: "Bronze",
                  ),
                  StatisticsWedget(
                    image: Image.asset(
                      'assets/images/star.png',
                      width: 35,
                    ),
                    description: "Top 3 Finishes",
                    statistic: "0",
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Statistics", style: TextStyle(fontSize: 25)),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Add Friends",
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ))
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffE2DCDA), width: 3),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    //here if the user click to Following, we will change the index to change the colors for it
                                    setState(() {
                                      index = 0;
                                    });
                                  },
                                  child:  Text(
                                    "Following",
                                    style: TextStyle(color: index == 0 ? Colors.blue : Colors.grey),
                                  )),
                              Container(
                                height: 3,
                                  color: index == 0 ? Colors.blue : const Color(0xffE2DCDA)                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              TextButton(
                                //here if the user click to Followers, we will change the index to change the colors for it

                              onPressed: () {
                                    setState(() {
                                      index = 1;
                                    });
                                  },
                                  child: Text(
                                    "Followers",
                                    style: TextStyle(color: index == 1 ? Colors.blue : Colors.grey),
                                  )),
                              Container(
                                height: 3,
                                  color: index == 1 ? Colors.blue : const Color(0xffE2DCDA)                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const FollowRow(colorAvatar: Color(0xFFAB70DF), name: "Hardi", letterOnAvatar: "H", xp: "4367 XP"),
                    const Divider(height: 2,thickness: 3, color: Color(0xffE2DCDA),),
                    const FollowRow(colorAvatar: Color(0xFFDF7070), name: "Krishna", letterOnAvatar: "K", xp: "2334 XP"),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffE2DCDA), width: 3),
                ),
                child:  Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/Dayflow Black Cat.png",height: 116, ),
                        const Expanded(child: Text("Invite your friends\n\nTell your friends it’s free and fun to learn on Mental up!")),

                      ],
                    ),
                    const SizedBox(height: 15,),
                    ElevatedButton(
                      onPressed: () {},

                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
                        backgroundColor: MaterialStateProperty.all(const Color(0XFF02A1FB)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                        elevation: MaterialStateProperty.all(10) ,
                        shadowColor: MaterialStateProperty.all(const Color(0XFF02A1FB))
                      ),
                      child: const Text(
                        "INVITE FRIENDS",
                        style:
                        TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

