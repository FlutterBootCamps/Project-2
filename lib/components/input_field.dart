import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key, required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: 316,
        height: 60,
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              fillColor: designColors[1],
              filled: true,
              hintText: hint,
              hintStyle: TextStyle(color: designColors[2]),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide.none)),
        ));
  }
}