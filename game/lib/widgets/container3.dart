import 'package:flutter/material.dart';

Widget challenge(
    {required String image,required String title,required String description,required BuildContext context}) {
  return Container(
    margin: EdgeInsets.all(10),

    width: 378,
    height: 117,
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Color.fromARGB(57, 0, 0, 0),width: 3)),
    child: Row(children: [
      Image.asset(image,
      height: 90,
      width: 146,),
      
      Column(
        children: [
          SizedBox(
              width: 205,
              height: 26,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
          SizedBox(
              width: 205,
              height: 78,
              child: Text(
                description,
                style: TextStyle(fontSize: 18),
              ))
        ],
      )
    ]),
  );
}
