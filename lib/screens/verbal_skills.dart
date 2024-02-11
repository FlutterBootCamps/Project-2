import 'package:flutter/material.dart';
import 'package:maram_project_2/widgets/circle.dart';

class VerbalSkillsScreen extends StatelessWidget {
  const VerbalSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffE5E5E5),
        title: const Text(
          "Verbal skills",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                //using stack to make the horse showing out of the container
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 50,
                      child: Container(
                        width: 211,
                        height: 128,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFC4C4C4), width: 3),
                          color: const Color(0xffE9E8E8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              const Text("Unit 1", style: TextStyle(fontSize: 20),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/Completion low.png", width: 100,),
                                  const SizedBox(width: 10,),
                                  const Text("3/40", style: TextStyle(color: Color(0xFF747474   )),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Image.asset(
                        'assets/images/beepbeephorse.png',
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //using CircleWedget
              CircleWedget(path: "assets/images/pencil.png", text: "Intro", insideText: "1"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleWedget(path: "assets/images/Book.png", text: "Phrases",  insideText: "1"),
                  const SizedBox(width: 20,),
                  CircleWedget(path: "assets/images/Bike.png", text: "Travel",  insideText: "1"),
                ],
              ),
              CircleWedget(path: "assets/images/lock.png", text: "", insideText: ""),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleWedget(path: "assets/images/lock.png", text: "", insideText: ""),
                  const SizedBox(width: 20,),
                  CircleWedget(path: "assets/images/lock.png", text: "", insideText: "",),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
