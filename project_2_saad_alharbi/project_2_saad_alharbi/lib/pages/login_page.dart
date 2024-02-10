import 'package:flutter/material.dart';
import 'package:project_2_saad_alharbi/component/bottom_nav_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBF5F2),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: Container(
                      width: 288,
                      height: 55,
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              fontFamily: 'Ribeye',
                              fontWeight: FontWeight.w400,
                              fontSize: 40),
                          children: [
                            TextSpan(
                              text: 'M',
                              style: TextStyle(
                                color: Color(0xffEB9F4A),
                              ),
                            ),
                            TextSpan(
                              text: 'E',
                              style: TextStyle(
                                color: Color(0xff77B29F),
                              ),
                            ),
                            TextSpan(
                              text: 'N',
                              style: TextStyle(
                                color: Color(0xffAB70DF),
                              ),
                            ),
                            TextSpan(
                              text: 'T',
                              style: TextStyle(
                                color: Color(0xff6884F6),
                              ),
                            ),
                            TextSpan(
                              text: 'A',
                              style: TextStyle(
                                color: Color(0xffECC055),
                              ),
                            ),
                            TextSpan(
                              text: 'L',
                              style: TextStyle(
                                color: Color(0xff77B29F),
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                            ),
                            TextSpan(
                              text: '^',
                              style: TextStyle(
                                color: Color(0xffAB70DF),
                              ),
                            ),
                            TextSpan(
                              text: 'u',
                              style: TextStyle(
                                color: Color(0xff6884F6),
                              ),
                            ),
                            TextSpan(
                              text: 'p',
                              style: TextStyle(
                                color: Color(0xffECC055),
                              ),
                            ),
                            TextSpan(
                              text: '^',
                              style: TextStyle(
                                color: Color(0xff77B29F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          fillColor: Colors.white,
                          filled: true,
                          label: Text(
                            "  Username",
                          ),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.grey)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          fillColor: Colors.white,
                          filled: true,
                          label: Text(
                            "  Password",
                          ),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.grey)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          alignment: Alignment.center,
                          fixedSize: MaterialStatePropertyAll(Size(300, 60)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xffEB9F4A))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomNavBar()));
                      },
                      child: const Text(
                        "GO",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                          children: [
                        TextSpan(
                            text: 'Don’t have account yet?',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' Sign Up',
                            style: TextStyle(color: Color(0xff77B29F))),
                      ])),
                      Image.asset('images/login_bottom_image.png'),
                ],
              ),
            ),
          ),
        ));
  }
}
