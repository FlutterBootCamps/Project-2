import 'package:flutter/material.dart';
import 'package:game/pages/bottom_nav_bar_screen.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 245, 242),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            Image.asset("assets/text.png"),
            const SizedBox(
              height: 70,
            ),
            Container(
              height: 50,
              width: 330,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: TextField(
                controller: userNameController,
                decoration: const InputDecoration(
                    hintText: "    user name", border: InputBorder.none),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              height: 50,
              width: 330,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                    hintText: "    password", border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 160),
              child: Text(
                "forget password ?",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // navigate to the home page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const BottomNavScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 160, 74),
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              child: const Text(
                "Go",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have account yet?",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Text("Sign Up",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 119, 178, 159),
                        fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Image.asset("assets/login.png")
          ],
        ),
      ),
    );
  }
}
