import 'package:educational_kids_game/components/fp_button.dart';
import 'package:educational_kids_game/components/input_field.dart';
import 'package:educational_kids_game/components/login_button.dart';
import 'package:educational_kids_game/components/logo.dart';
import 'package:educational_kids_game/data/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  const SizedBox(height: 89),
                  const Logo(),
                  const SizedBox(height: 65),
                  const InputField(hint: "Username", isPassword: false,),
                  const SizedBox(height: 24),
                  const InputField(hint: "Password", isPassword: true,),
                  const SizedBox(height: 25),
                  const FPButton(),
                  const SizedBox(height: 24),
                  const LoginButton(),
                  const SizedBox(height: 41),
                  RichText(
                      text: TextSpan(
                          text: "Don't have an account yet? ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: designColors[0]),
                          children: [
                        TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: designColors[4]),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset("images/dinosaur_ride.png"),
            )
          ],
        ),
      ),
    );
  }
}
