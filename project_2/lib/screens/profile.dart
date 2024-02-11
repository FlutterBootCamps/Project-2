import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //----------UP BAR container
          Container(
            width: 400, 
            height: 60, 
            color: Color.fromARGB(255, 249, 246, 242),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5), 
                    Text('Profile', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))), 
                  ],
                ),

              ],
              
            ),
          ),
        ],
      )
    );
  }
}