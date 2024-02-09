import 'package:educational_kids_game/components/friend_card.dart';
import 'package:educational_kids_game/components/go_to_button.dart';
import 'package:educational_kids_game/components/info_container_button.dart';
import 'package:educational_kids_game/components/profile_card.dart';
import 'package:educational_kids_game/components/stats_holder.dart';
import 'package:educational_kids_game/components/tab_button.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: designColors[10],
      appBar: AppBar(
          toolbarHeight: 71,
          backgroundColor: designColors[9],
          centerTitle: true,
          title: const Text("Profile",
              style: TextStyle(
                fontSize: 30,
              ))),
      body: SafeArea(
          child: ListView(
        children: [
          const ProfileCard(
            name: "Omar Abouellil",
            nickName: "Omar9780",
            image: "images/omar.jpg",
            dateJoined: "August 2022",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
            child: Column(
              children: [
                GoToButton(
                  image: Image.asset("images/celebrate.png"),
                  label: "Friends updates",
                ),
                const SizedBox(
                  height: 34,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Statistics",
                      style: TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: 387,
                      height: 138,
                      child: GridView.count(
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 20,
                        crossAxisCount: 2,
                        childAspectRatio: 179 / 61,
                        children: [
                          StatsHolder(
                            image: Image.asset("icons/flame.png"),
                            stat: "3",
                            statDescription: "Day Streak",
                          ),
                          StatsHolder(
                            image: Image.asset("icons/lightning.png"),
                            stat: "1432",
                            statDescription: "Total XP",
                          ),
                          StatsHolder(
                            image: Image.asset("icons/bronze_medal.png"),
                            stat: "Bronze",
                            statDescription: "Current League",
                          ),
                          StatsHolder(
                            image: Image.asset("icons/blue_medal.png"),
                            stat: "0",
                            statDescription: "Top 3 Finishes",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Friends",
                      style: TextStyle(fontSize: 30, color: designColors[0]),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Add Friends",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: designColors[15]),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 377,
                  height: 153,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 3, color: designColors[20])),
                  child: Column(children: [
                    const Row(
                      children: [
                        TabButton(
                          label: "Following",
                          isSelected: true,
                        ),
                        TabButton(
                          label: "Followers",
                          isSelected: false,
                        )
                      ],
                    ),
                    FriendCard(
                      backgroundColor: designColors[5],
                      isLast: false,
                      name: "Mohammed",
                      xp: 4367,
                    ),
                    FriendCard(
                      backgroundColor: designColors[24],
                      isLast: true,
                      name: "Hamad",
                      xp: 2334,
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 37,
                ),
                const InfoContainerButton(image: "images/cat.png", title: "Invite your friends", description: "Tell your friends it’s free and fun to learn on Mental up!",buttonText: "INVITE FRIENDS",)
              ],
            ),
          ),
        ],
      )),
    );
  }
}

