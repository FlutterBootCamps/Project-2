import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  const FriendCard({
    super.key, required this.backgroundColor, required this.name, required this.xp, required this.isLast,
  });

  final Color backgroundColor;
  final String name;
  final int xp;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return InkWell( //To Setup for future clickability
      child: Container(
          width: 377,
          height: 54,
          padding: const EdgeInsets.only(left: 10, right: 19.05),
          decoration: BoxDecoration(
              border: (isLast) ? null : Border(
                  bottom: BorderSide(
                      width: 3, color: designColors[20]))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    minRadius: 15,
                    backgroundColor: backgroundColor,
                    child: Text(
                      name[0],
                      style: TextStyle(
                          fontSize: 15, color: designColors[1]),
                    ),
                  ),
                  const SizedBox(width: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 20,
                            color: designColors[0]),
                      ),
                      Text(
                        "$xp XP",
                        style: TextStyle(
                            fontSize: 15,
                            color: designColors[23]),
                      ),
                    ],
                  )
                ],
              ),
              Icon(Icons.arrow_forward_ios, color: designColors[22],)
            ],
          )),
    );
  }
}
