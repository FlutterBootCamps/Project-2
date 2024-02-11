import 'package:flutter/material.dart';
import 'package:game/pages/gime_screen.dart';
import 'package:game/widgets/container1.dart';
import 'package:game/widgets/container2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 245, 242),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(209, 229, 229, 229),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.local_fire_department_sharp,
              color: Color.fromARGB(255, 235, 160, 74),
              size: 35,
            ),
            const Text("3",
                style: TextStyle(color: Color.fromARGB(255, 235, 160, 74))),
            const SizedBox(width: 40),
            Image.asset(
              "assets/Vector.png",
              height: 25,
              width: 25,
            ),
            const Text("1432 XP",
                style: TextStyle(color: Color.fromARGB(255, 51, 143, 155))),
            const SizedBox(width: 40),
            const Icon(Icons.favorite,
                color: Color.fromARGB(255, 220, 62, 0), size: 35),
            Image.asset(
              "assets/Vector2.png",
              height: 30,
              width: 30,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 44,width: 290,
                  child: Text("Logical reasoning",
                      style:
                          TextStyle(fontSize: 33)),
                ),
                // const SizedBox(
                //   width: 10,
                // ),
                Image.asset("assets/crown.png"),
                const Text(
                  "18/40",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(149, 0, 0, 0)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  child: card(0.5, context),
                  onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const GameScreen()));
              }
                  ),
                const SizedBox(
                  width: 20,
                ),
                card2(context),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 44,width: 285,
                  child: Text("Artistic thinking",
                      style:
                          TextStyle(fontSize: 33)),
                ),
                
                Image.asset("assets/crown.png"),
                const Text(
                  "35/40",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(149, 0, 0, 0)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  child: card(0.8, context),
                  onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const GameScreen()));
              }),
                const SizedBox(
                  width: 20,
                ),
                card2(context),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 44,width: 300,
                  child: Text("Verbal skills",
                      style:
                          TextStyle(fontSize: 35)),
                ),
                
                Image.asset("assets/crown.png"),
                const Text(
                  "3/40",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(149, 0, 0, 0)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  child: card(0.2, context),
                  onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const GameScreen()));
              }),
                const SizedBox(
                  width: 20,
                ),
                card2(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
