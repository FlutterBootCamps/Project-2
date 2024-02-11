import 'package:flutter/material.dart';
import 'package:project_2_sultan_alotaibi/screens/buttom_nav_bar.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({super.key});

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffbf5f2),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              // Logo using RichText for multi-colored letters
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Ribeye',
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'M', style: TextStyle(color: Color(0xffeb9f4a))),
                    TextSpan(
                        text: 'E', style: TextStyle(color: Color(0xff77B29F))),
                    TextSpan(
                        text: 'N', style: TextStyle(color: Color(0xffAB70DF))),
                    TextSpan(
                        text: 'T', style: TextStyle(color: Color(0xff6884F6))),
                    TextSpan(
                        text: 'A', style: TextStyle(color: Color(0xffECC055))),
                    TextSpan(
                        text: 'L ', style: TextStyle(color: Color(0xff77B29F))),
                    TextSpan(
                        text: '^', style: TextStyle(color: Color(0xffAB70DF))),
                    TextSpan(
                        text: 'u', style: TextStyle(color: Color(0xff6884F6))),
                    TextSpan(
                        text: 'p', style: TextStyle(color: Color(0xffECC055))),
                    TextSpan(
                        text: '^', style: TextStyle(color: Color(0xff77B29F))),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              // Username input field
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Username",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Password input field
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Forgot Password link
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              // Sign In button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFFEB9F4A),
                    fixedSize: const Size(290, 48)),
                onPressed: () {
                  // Navigate to the BottomNav screen on successful login
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => BottomNav(),
                  ));
                },
                child: const Text(
                  "Go",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              // Sign Up link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("   Don't have an account yet?",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextButton(
                    onPressed: () {
                      // Add navigation to the Sign Up screen
                    },
                    child: const Text("Sign Up",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff77B29F))),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Background image at the bottom
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              'images/Kids.jpg',
              width: 400,
            ),
          ],
        ),
      ),
    );
  }
}
