import 'package:flutter/material.dart';

Widget card2(BuildContext context) {
  return Container(
      // containing image and text
      height: 227,
      width: 179,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(139, 196, 196, 196)),
      child: Center(
        child: 
         Image.asset("assets/lock.png"),
          
        
      ));
}
