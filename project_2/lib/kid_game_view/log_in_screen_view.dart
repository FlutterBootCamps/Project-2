import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';
import 'home_screen_view.dart';

class LogInScreenView extends StatelessWidget {
  const LogInScreenView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 245, 242, 1),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.95,
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "MENTAL ^up^",
                    style: TextStyle(
                      fontFamily: "lib/font/Ribeye-Regular.ttf",
                      fontSize: 40,
                    ),
                  ),
                  TextFormFieldStyle(
                      hintText: "Username",
                      obscureText: false,
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.9),
                  TextFormFieldStyle(
                      hintText: "Password",
                      obscureText: true,
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.9),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: TextButton(
                      child: const Text("Forgot Password?",
                          style: TextStyle(
                              fontFamily: 'lib/font/Roboto',
                              color: Colors.black)),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: TextButton(
                        child: const Text("GO", style: TextStyle(fontSize: 24)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BottomNavigationBarState()));
                          print("next page");
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromRGBO(235, 159, 74, 1),
                        ),
                      )),
                  SizedBox(
                    width: 260,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Sign Up"),
                          style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromRGBO(119, 178, 159, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    alignment: Alignment.bottomCenter,
                    "lib/image/image_1.png",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget TextFormFieldStyle(
    {required String hintText,
    required bool obscureText,
    required double height,
    required double width}) {
  return SizedBox(
    height: height,
    width: width,
    child: TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(23),
        ),
      ),
    ),
  );
}
