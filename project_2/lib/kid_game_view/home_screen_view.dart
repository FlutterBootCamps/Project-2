import 'package:flutter/material.dart';

import 'challenges_screen_view.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("lib/image/Vector (1).png"),
              SizedBox(width: 8),
              Text("3"),
              SizedBox(width: 32),
              Image.asset("lib/image/Vector.png"),
              SizedBox(width: 8),
              Text("3"),
              SizedBox(width: 32),
              Image.asset("lib/image/Vector (2).png"),
              SizedBox(width: 8),
              Image.asset("lib/image/Vector (3).png"),
            ],
          ),
        ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.95,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [

              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Logical reasoning",
                      style:
                          TextStyle(fontSize: 25, fontFamily: "Roboto-Black"),
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      "lib/image/Vector (4).png",
                    ),
                    Text(
                      "18/40",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  unitButton(
                    "unit 1",
                    () {},
                    18,
                    40,
                    MediaQuery.of(context).size.height * 0.2,
                    MediaQuery.of(context).size.width * 0.35,
                  ),
                  unitLockedButton(MediaQuery.of(context).size.height * 0.2,
                      MediaQuery.of(context).size.width * 0.35),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Artistic thinking",
                      style:
                          TextStyle(fontSize: 25, fontFamily: "Roboto-Black"),
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      "lib/image/Vector (4).png",
                    ),
                    Text(
                      "35/40",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(height: 20),
                  unitButton(
                    "unit 1",
                    () {},
                    35,
                    40,
                    MediaQuery.of(context).size.height * 0.2,
                    MediaQuery.of(context).size.width * 0.35,
                  ),
                  unitLockedButton(MediaQuery.of(context).size.height * 0.2,
                      MediaQuery.of(context).size.width * 0.35),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verbal skills",
                      style:
                          TextStyle(fontSize: 25, fontFamily: "Roboto-Black"),
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      "lib/image/Vector (4).png",
                    ),
                    Text(
                      "3/40",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  unitButton(
                    "unit 1",
                    () {},
                    3,
                    40,
                    MediaQuery.of(context).size.height * 0.2,
                    MediaQuery.of(context).size.width * 0.35,
                  ),
                  unitLockedButton(MediaQuery.of(context).size.height * 0.2,
                      MediaQuery.of(context).size.width * 0.35),
                ],
              ),
            ],
          ),
        ),            
            );
  }

  Widget unitButton(
      final String? buttonText,
      final Function? onPressed,
      final int? completedCount,
      final int? totalCount,
      final double height,
      final double width) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        child: Column(
          children: [
            Text(buttonText!),
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  LinearProgressIndicator(
                    value: completedCount! / totalCount!,
                    backgroundColor: Colors.grey[300],
                    minHeight: 12,
                    borderRadius: BorderRadius.circular(10),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromRGBO(236, 192, 85, 1),
                    ),
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 5),
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "lib/image/Vector (4).png",
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget unitLockedButton(final double height, final double width) {
  return SizedBox(
      height: height,
      width: width,
      child: Card(
          child: Column(children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 20,
            width: 20,
            child: Image.asset(
              "lib/image/Vector (5).png",
            ),
          ),
        )
      ])));
}

Map<int, ColorSwatch<int>> colorMap = {
  0: Colors.green,
  1: Colors.red,
  2: Colors.purple,
  3: Colors.grey,
};
