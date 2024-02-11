import 'package:flutter/material.dart';

Widget statistics(
    {required String image,
    required String title,
    required String description,
    required BuildContext context}) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.only(top: 5,left: 20),
    width: 179,
    height: 61,
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: Color.fromARGB(29, 0, 0, 0), width: 3)),
    child: Row(children: [
      Image.asset(image,height: 35, width: 35,),
      const SizedBox(
        width: 10,
      ),
      Column(
        children: [
          SizedBox(
              width: 72,
              height: 21,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              )),
          SizedBox(
              width: 72,
              height: 20,
              child: Text(
                description,
                style: const TextStyle(fontSize: 15,color: Color.fromARGB(102, 0, 0, 0)),
              ))
        ],
      )
    ]),
  );
}
