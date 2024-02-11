

import 'package:flutter/material.dart';

class FollowRow extends StatelessWidget {

  //parameters for each FollowRow

  final String name;
  final String xp;
  final String letterOnAvatar;
  final Color colorAvatar;

  const FollowRow({super.key, required this.name, required this.letterOnAvatar, required this.xp, required this.colorAvatar});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: colorAvatar,
                      shape: BoxShape.circle
                  ),
                  child: Text(letterOnAvatar, style: TextStyle(color: Colors.white),),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      name,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                     Text(
                      xp,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.navigate_next,
              color: Color(0xffD3CDCB),
              size: 38,
            )
          ],
        ));
  }
}
