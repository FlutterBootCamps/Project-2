import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.boldTitle,
  });

  final String image;
  final String title;
  final String description;
  final bool boldTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 387,
      height: 116,
      padding: const EdgeInsets.only(left: 13),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(width: 3, color: designColors[20])),
      child: Row(
        children: [
          Image.asset(image),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              SizedBox(
                width: 214,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      color: designColors[0],
                      fontWeight:
                          (boldTitle) ? FontWeight.bold : FontWeight.normal),
                ),
              ),
              SizedBox(
                  width: 214,
                  height: 52,
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: (boldTitle) ? 20 : 15,
                      color: designColors[0],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
