import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../component/friends_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffe9e8e7),
          title: const Text(
            "Profile",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: ListView(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nidhi Pandya',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Nidhi12',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Icon(
                            Ionicons.time,
                            color: Colors.grey,
                          ),
                          Text(
                            "   Joined March 2022",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                  Image.asset('images/Profile_img.png'),
                ],
              ),
            ),
            const Divider(
              color: Color(0xffe9e8e7),
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 370,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 3,
                          style: BorderStyle.solid,
                          color: const Color(0xffe9e8e7)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("images/Party_img.png"),
                        const Text(
                          "Friends updates",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Icon(Ionicons.chevron_forward_outline,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Statistics",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildStatContainer(
                          "images/Fire_icon.png", "3", "Day Streak"),
                      const SizedBox(width: 6),
                      buildStatContainer(
                          "images/Lighting_icon.png", "1432", "Total XP"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildStatContainer("images/noto_3rd-place-medal.png",
                          "Bronze", "Current League"),
                      const SizedBox(width: 6),
                      buildStatContainer(
                          "images/bx_medal.png", "0", "Top 3 Finishes"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Friends",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                      Text("ADD FRIENDS",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff02A1FB))),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 3,
                          style: BorderStyle.solid,
                          color: const Color(0xffe9e8e7)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            width: 180,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                      width: 2,
                                      color: Color(0xff02A1FB),
                                      style: BorderStyle.solid)),
                            ),
                            child: const Text("FOLLOWING",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xff02A1FB))),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            width: 185,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                      width: 2,
                                      color: Color(0xffe9e8e7),
                                      style: BorderStyle.solid)),
                            ),
                            child: const Text("FOLLOWERS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.grey)),
                          )
                        ],
                      ),
                      FriendsContainer(
                          avatar: 'H',
                          name: 'Hardi',
                          xp: '4367 XP',
                          color: const Color(0xffAB70DF)),
                      const Divider(
                        color: Color(0xffe9e8e7),
                        thickness: 2,
                      ),
                      FriendsContainer(
                          avatar: 'K',
                          name: 'Krishna',
                          xp: '2334 XP',
                          color: const Color(0xffDF7070)),
                      const SizedBox(
                        height: 20,
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 3,
                          style: BorderStyle.solid,
                          color: const Color(0xffe9e8e7)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("images/BlackCat_img.png",
                              fit: BoxFit.cover),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Invite your friends",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Tell your friends it’s free and fun to learn on Mental up!",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: const BoxDecoration(boxShadow: [BoxShadow(color: Color(0xffa1d6f5),blurRadius:10, offset: Offset(0, 5)) ]),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.center,
                              backgroundColor: const Color(0xff02A1FB),
                              minimumSize: const Size(320, 45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "INVITE FRIENDS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ]),
                  )
                ],
              ),
            )
          ]),
        ]));
  }

  Widget buildStatContainer(String imagePath, String value, String label) {
    return Container(
      width: 180,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          style: BorderStyle.solid,
          color: const Color(0xffe9e8e7),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
