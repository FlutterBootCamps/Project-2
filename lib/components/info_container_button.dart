import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class InfoContainerButton extends StatelessWidget {
  const InfoContainerButton({
    super.key, required this.image, required this.title, required this.description, required this.buttonText,
  });

  final String image;
  final String title;
  final String description;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 378,
      height: 228,
      padding: const EdgeInsets.only(
          left: 29, right: 28, top: 17, bottom: 24),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(width: 3, color: designColors[20])),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image),
            SizedBox(
              width: 185,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: designColors[0]),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 20, color: designColors[0]),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 22,
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [BoxShadow(color: designColors[15], blurRadius: 10, offset: const Offset(0, 4))]),
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(designColors[15]), minimumSize: const MaterialStatePropertyAll(Size(321, 47)), shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))))),
              child: Text(
                buttonText,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: designColors[1]),
              ),),
        )
      ]),
    );
  }
}
