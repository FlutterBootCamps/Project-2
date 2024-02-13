import 'package:flutter/material.dart';

class LessonsUnit extends StatefulWidget {
  const LessonsUnit({super.key});

  @override
  State<LessonsUnit> createState() => _LessonsUnitState();
}

class _LessonsUnitState extends State<LessonsUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Verbal skills"),
              Image.asset("lib/image/Vector (4).png"),
              Text(
                "3",
                style: TextStyle(color: Colors.yellow.shade400),
              ),
              Image.asset("lib/image/Vector (7).png"),
              Text(
                "213",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(child: unitProgress(3, 40, 150, 200)),
          CircleWithProgressBar(
            radius: 50.0,
            strokeWidth: 5.0,
            image: "lib/image/Hands Pencil 1.png",
            progress: 0,
            title: "Intro",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleWithProgressBar(
                radius: 50.0,
                strokeWidth: 5.0,
                image: "lib/image/Hands Book.png",
                progress: 0,
                title: "Phrases",
              ),
              CircleWithProgressBar(
                radius: 50.0,
                strokeWidth: 5.0,
                image: "lib/image/Dayflow Bike.png",
                progress: 0,
                title: "Travel",
              ),
            ],
          ),
          CircleWithProgressBar(
            radius: 50.0,
            strokeWidth: 5.0,
            image: "lib/image/Vector (5).png",
            progress: 0,
            title: "",
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleWithProgressBar(
              radius: 50.0,
              strokeWidth: 5.0,
              image: "lib/image/Vector (5).png",
              progress: 0,
              title: "",
            ),
            CircleWithProgressBar(
              radius: 50.0,
              strokeWidth: 5.0,
              image: "lib/image/Vector (5).png",
              progress: 0,
              title: "",
            ),
          ])
        ]));
  }
}

Widget unitProgress(final int? completedCount, final int? totalCount,
    final double height, final double width) {
  return SizedBox(
    height: height,
    width: width,
    child: Card(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "lib/image/Beep Beep Horse.png",
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: LinearProgressIndicator(
                    value: completedCount! / totalCount!,
                    backgroundColor: Colors.grey[300],
                    minHeight: 12,
                    borderRadius: BorderRadius.circular(10),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromRGBO(236, 192, 85, 1),
                    ),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Padding(
                    padding: EdgeInsets.only(top: 90),
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
          Text("unit 1"),
        ],
      ),
    ),
  );
}

class CircleWithProgressBar extends StatelessWidget {
  final double radius;
  final double strokeWidth;
  final double progress;
  final String image;
  final String title;

  CircleWithProgressBar({
    required this.radius,
    required this.strokeWidth,
    required this.progress,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      child: Stack(
        children: [
          // Empty Circle
          Container(
            width: radius * 4,
            height: radius * 4,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
            ),
          ),
          Center(child: Image.asset(image)),
          Center(child: Text(title)),
          // Circular Progress Bar
          Positioned.fill(
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: strokeWidth,
              backgroundColor: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
