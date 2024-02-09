import 'package:educational_kids_game/components/icon_text_container.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key, required this.name, required this.nickName, required this.dateJoined, required this.image,
  });
  final String name;
  final String nickName;
  final String dateJoined;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151,
      padding: const EdgeInsets.only(left: 25, right: 25, top: 28, bottom: 15),
      decoration: BoxDecoration(border: BorderDirectional(bottom: BorderSide(color: designColors[20], width: 3))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize: 30, color: designColors[0]),),
              Text(nickName, style: TextStyle(fontSize: 20, color: designColors[21])),
              const SizedBox(height: 8,),
              IconTextContainer(width: 154, image: FaIcon(FontAwesomeIcons.solidClock, color: designColors[21],size: 15), color: designColors[0], padding: 0, text: "Joined $dateJoined", fontSize: 15),
            ],
          ),
          CircleAvatar(
            minRadius: 40,
            backgroundImage: AssetImage(image),
          )
        ],
      ),
    );
  }
}
