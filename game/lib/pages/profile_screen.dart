import 'package:flutter/material.dart';
import 'package:game/widgets/container4.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 245, 242),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(209, 229, 229, 229),
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(129, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              color: Color.fromARGB(125, 0, 0, 0),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Joined March 2022",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ]),
                  Image.asset("assets/profileImage.png"),
                ],
              ),
            ),
            const Divider(
              color: Color.fromARGB(29, 0, 0, 0),
              thickness: 3,
            ),
            Container(
              margin: const EdgeInsets.all(25),
              width: 378,
              height: 69,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                      color: const Color.fromARGB(29, 0, 0, 0), width: 3)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(children: [
                  Image.asset("assets/icone.png"),
                  const SizedBox(
                    height: 23,
                    width: 285,
                    child: Text(
                      "  Friends updates",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color.fromARGB(29, 0, 0, 0),
                  )
                ]),
              ),
            ),
            const Text(
              "   Statistics",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  statistics(
                      context: context,
                      image: "assets/fiar.png",
                      title: "3",
                      description: "Day Streak"),
                  statistics(
                      context: context,
                      image: "assets/profile3.png",
                      title: "1432",
                      description: "Total XP"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  statistics(
                      context: context,
                      image: "assets/profile2.png",
                      title: "Bronze",
                      description: "Current League"),
                  statistics(
                      context: context,
                      image: "assets/bx_medal.png",
                      title: "0",
                      description: "Top 3 Finishes"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "   FRIENDS",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "ADD FRIENDS    ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 2, 160, 251)),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Center(
                    child: Container(
                        width: 378,
                        height: 166,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: const Color.fromARGB(29, 0, 0, 0),
                                width: 3)),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "FOLLOWING",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 2, 160, 251)),
                                ),
                                Text(
                                  "FOLLOWERS",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(125, 0, 0, 0)),
                                ),
                              ],
                            ),
                            Divider(
                              color: Color.fromARGB(29, 0, 0, 0),
                              thickness: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 31,
                                        color:
                                            Color.fromARGB(255, 171, 112, 223),
                                      ),
                                      Text(
                                        "H",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 23,
                                      width: 285,
                                      child: Text("Hardi",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                      width: 285,
                                      child: Text("4367 XP",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  100, 0, 0, 0))),
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Color.fromARGB(29, 0, 0, 0),
                                )
                              ],
                            ),
                            Divider(
                              color: Color.fromARGB(29, 0, 0, 0),
                              thickness: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 31,
                                        color:
                                            Color.fromARGB(255, 223, 112, 112),
                                      ),
                                      Text(
                                        "K",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 23,
                                      width: 285,
                                      child: Text("Krishna",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                      width: 285,
                                      child: Text("2334 XP",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  100, 0, 0, 0))),
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Color.fromARGB(29, 0, 0, 0),
                                )
                              ],
                            )
                          ],
                        ))),
                const Column(
                  children: [
                    SizedBox(
                      height: 29,
                    ),
                    Divider(
                      color: Color.fromARGB(255, 2, 160, 251),
                      endIndent: 220,
                      thickness: 3,
                      indent: 30,
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(25),
              width: 378,
              height: 228,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                      color: const Color.fromARGB(29, 0, 0, 0), width: 3)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Black_Cat.png"),
                      const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 185,
                            child: Text(
                              "Invite your friends",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 86,
                            width: 185,
                            child: Text(
                              "Tell your friends it's free and fun to learn on Mental up!",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        backgroundColor: const Color.fromARGB(255, 2, 160, 251),
                        fixedSize: const Size(321, 47),
                        elevation: 5.0,
                        shadowColor: const Color.fromARGB(124, 2, 160, 251),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "INVITE FRIENDS",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
