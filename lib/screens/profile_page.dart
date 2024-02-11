import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
      appBar: AppBar(
        title: const Text("Profile",
            style: TextStyle(fontSize: 30, fontFamily: 'Roboto')),
        backgroundColor: const Color(0xffE5E5E5),
        centerTitle: true,
      ),
      body: ListView(children: [
        // User Information Section
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Nidhi Pandya",
                    style: TextStyle(
                        fontSize: 30, fontFamily: 'Roboto', height: 0.9),
                  ),
                  const Text("Nidhi12",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          color: Color(0xff92928e))),
                  Row(
                    children: [
                      Image.asset('images/fa6-solid_clock.png',
                          height: 15, width: 15),
                      const Text("  Joined March 2022",
                          style: TextStyle(fontSize: 15, fontFamily: 'Roboto'))
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/Avatar.png'),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Divider(
          color: Color(0xffdfdad8),
          height: 5,
          thickness: 3,
        ),
        // Friends Updates Section
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              width: 378,
              height: 69,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffdfdad8), width: 3)),
              child: Row(
                children: [
                  Image.asset(
                    'images/aa.png',
                    width: 49.74,
                    height: 30,
                  ),
                  const Text("Friends updates",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                      )),
                  const SizedBox(width: 125),
                  Image.asset(
                    'images/Group.png',
                    width: 49.74,
                    height: 30,
                  ),
                ],
              )),
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Statistics",
                  style: TextStyle(
                      fontSize: 30, fontFamily: 'Roboto', height: 0.9))
            ],
          ),
        ),
        // User Statistics Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Row(
              children: [
                // Streak and Current League
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 180,
                      height: 69,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xffdfdad8), width: 3)),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/Vector (2).png',
                                width: 26,
                                height: 35,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("3",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Roboto',
                                      height: 0.8)),
                              Text("Day Streak",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Color(0xff92928e)))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 69,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xffdfdad8), width: 3)),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/noto_3rd-place-medal.png',
                                width: 34,
                                height: 34,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bronze",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Roboto',
                                      height: 0.8)),
                              Text("Current League",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Color(0xff92928e)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 18),
                // Total XP and Top 3 Finishes
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 180,
                      height: 69,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xffdfdad8), width: 3)),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/Vector (3).png',
                                width: 26,
                                height: 35,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("1432",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Roboto',
                                      height: 0.8)),
                              Text("Total XP",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Color(0xff92928e)))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 69,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xffdfdad8), width: 3)),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/bx_medal.png',
                                width: 36,
                                height: 36,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("0",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Roboto',
                                      height: 0.8)),
                              Text("Top 3 Finishes",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Color(0xff92928e)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Friends Section
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Friends",
                  style: TextStyle(fontSize: 30, fontFamily: 'Roboto')),
              Text("Add Friends",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      color: Color(0xff02A1FB)))
            ],
          ),
        ),
        const SizedBox(height: 10),
        // Following and Followers Tabs
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                width: 377,
                height: 32,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    border: BorderDirectional(
                        bottom: BorderSide.none,
                        top: BorderSide(color: Color(0xffdfdad8), width: 3),
                        start: BorderSide(color: Color(0xffdfdad8), width: 3),
                        end: BorderSide(color: Color(0xffdfdad8), width: 3))),
                child: Row(children: [
                  Container(
                    width: 182,
                    height: 32,
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: Color(0xff02A1FB), width: 3))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("FOLLOWING",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                color: Color(0xff02A1FB))),
                      ],
                    ),
                  ),
                  Container(
                    width: 182,
                    height: 32,
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: Color(0xffdfdad8), width: 3))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("FOLLOWERS",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                color: Color(0xff92928e))),
                      ],
                    ),
                  )
                ]),
              ),
              // Friends List
              Container(
                width: 377,
                height: 60,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        vertical:
                            BorderSide(color: Color(0xffdfdad8), width: 3))),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffAB70DF),
                          radius: 20,
                          child: Text(
                            "H",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hardi",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w900,
                              height: 0.9),
                        ),
                        Text("4367 XP",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                color: Color(0xff92928e)))
                      ],
                    ),
                    const SizedBox(width: 190),
                    Image.asset(
                      'images/Group.png',
                      width: 49.74,
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                width: 377,
                height: 65,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                    border:
                        Border.all(color: const Color(0xffdfdad8), width: 3)),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffDF7070),
                          radius: 20,
                          child: Text(
                            "K",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Krishna",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w900,
                              height: 0.9),
                        ),
                        Text("2334 XP",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                color: Color(0xff92928e)))
                      ],
                    ),
                    const SizedBox(width: 177),
                    Image.asset(
                      'images/Group.png',
                      width: 49.74,
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Invite Friends Section
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 378,
            height: 228,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xffdfdad8), width: 3)),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [Image.asset('images/Dayflow Black Cat (1).png')],
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
                          Text(
                            "Invite your friends",
                            style: const TextStyle(
                                fontSize: 21,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Tell your friends it's free and fun to learn on Mental Up!",
                            style: TextStyle(
                                fontSize: 19,
                                fontFamily: 'Roboto'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff02A1FB),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          elevation: 0,
                          fixedSize: const Size(321, 47)),
                      onPressed: () {},
                      child: const Text(
                        "INVITE FRIENDS",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30)
      ]),
    );
  }
}
