import 'package:educational_kids_game/data/colors.dart';
import 'package:educational_kids_game/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:  ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size(316, 58)),
        shadowColor: const MaterialStatePropertyAll(Colors.transparent),
        backgroundColor: MaterialStatePropertyAll(designColors[3]),
      ),
        onPressed: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const NavigationScreen()), (route) => false);
        },
        child: const Text(
          "GO",
          style: TextStyle(fontSize: 24, color: Color(0xffFFFFFF)),
        ));
  }
}
