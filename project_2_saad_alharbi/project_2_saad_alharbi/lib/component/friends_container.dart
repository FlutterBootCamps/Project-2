import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FriendsContainer extends StatelessWidget {
  String avatar;
  String name;
  String xp;
  Color color;

  FriendsContainer(
      {super.key,
      required this.avatar,
      required this.name,
      required this.xp,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: color,
              child: Text(avatar, style: const TextStyle(color: Colors.white))),
          const SizedBox(width: 10),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              name,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(xp,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ))
          ]),
          const SizedBox(
            width: 200,
          ),
          const Icon(
            Ionicons.chevron_forward_outline,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
