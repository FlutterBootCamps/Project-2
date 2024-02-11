import 'package:flutter/material.dart';
import 'package:maram_project_2/screens/verbal_skills.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
        // to disable the back icon from home page
        automaticallyImplyLeading: false,
        // child of app bar,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Icon(Icons.local_fire_department_rounded, color: Color(0xFFEB9F4A),),
                Text("3", style: TextStyle(color: Color(0xFFEB9F4A)),)
              ],
            ),
            Row(
              children: [
                Icon(Icons.fact_check_sharp, color: Color(0xFF338F9B),),
                Text("1432 XP", style: TextStyle(color: Color(0xFF338F9B)),)
              ],
            ),
            Row(
              children: [
                Icon(Icons.favorite, color: Color(0xFFDC3F00),),
                Text("∞", style: TextStyle(color: Color(0xFFDC3F00)),)
              ],
            ),
          ],
        ),
        backgroundColor: const Color(0xffE5E5E5),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Logical reasoning", style: TextStyle(
                      fontSize: 25
                  ),),
                  Row(
                    children: [
                      Image.asset('assets/images/Vector.png', width: 30,),
                      const Text("18/40", style: TextStyle(fontSize: 20, color: Color(0xff656362)),)
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    // onTap: VerbalSkillsScreen(),
                    child: Container(
                      height: 227,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E1E0),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Unit 1", style: TextStyle(
                                fontSize: 30
                            ),),
                            Image.asset('assets/images/Completion.png')
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 179,
                      height: 227,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E1E0),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset('assets/images/lock.png', width: 20,)
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Artistic thinking", style: TextStyle(
                      fontSize: 25
                  ),),
                  Row(
                    children: [
                      Image.asset('assets/images/Vector.png', width: 30,),
                      const Text("35/40", style: TextStyle(fontSize: 20, color: Color(0xff656362)),)
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 227,
                    decoration: BoxDecoration(
                        color: const Color(0xffE5E1E0),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Unit 1", style: TextStyle(
                              fontSize: 30
                          ),),
                          Image.asset('assets/images/secCompletion.png')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 179,
                      height: 227,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E1E0),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset('assets/images/lock.png', width: 20,)
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Verbal skills", style: TextStyle(
                      fontSize: 25
                  ),),
                  Row(
                    children: [
                      Image.asset('assets/images/Vector.png', width: 30,),
                      const Text("3/40", style: TextStyle(fontSize: 20, color: Color(0xff656362)),)
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const VerbalSkillsScreen();
                      }));
                    },
                    child: Container(
                      height: 227,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E1E0),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Unit 1", style: TextStyle(
                                fontSize: 30
                            ),),
                            Image.asset('assets/images/Completion.png')
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 179,
                      height: 227,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E1E0),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset('assets/images/lock.png', width: 20,)
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
