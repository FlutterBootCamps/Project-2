import 'package:flutter/material.dart';
import 'package:project_2_flutter_alaa_alyahya/screens/verbal_skills_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        automaticallyImplyLeading: false,
        title:          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset("asset/flame.png", width: 25),
                  const Text(" 3 ", style: TextStyle(color: Color(0xffEB9F4A)),),
                ],
              ), 
              Row(
                children: [
                  Image.asset("asset/treasure.png", width: 25),
                  const Text(" 1432 XP", style: TextStyle(color: Color(0xff338F9B)),),
                ],
              ),
              Row(
                children: [
                  Image.asset("asset/hart.png", width: 25),
                  const SizedBox(width: 8,),
                  Image.asset("asset/Infinite.png", width: 25),
                ],
              ),
            ],
          ),
        ),


        body: 
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 20,),

                  // ---- First section " Logical reasoning" -----

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Logical reasoning", style: TextStyle(fontSize: 30, ),),
                      Row(
                        children: [
                          Image.asset("asset/crown.png", width:20,),
                          const Text(" 8/40", style: TextStyle(color: Colors.black26, fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),

                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const VerbalSkillsScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width * .43,
                                      
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Unit 1", style: TextStyle(fontSize: 25),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("asset/crown.png", width: 16),
                                  Container(
                                    margin: const EdgeInsets.all(3),
                                    height: 10,
                                    width: 90,
                                    decoration:const BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.only( 
                                        topLeft: Radius.elliptical(400, 690), 
                                        topRight: Radius.circular(300),
                                        bottomRight: Radius.circular(300)
                                      ),              
                                    ), 
                                    child: FractionallySizedBox(
                                      alignment: Alignment.centerLeft,
                                      widthFactor: 0.4,
                                      child: Container(
                                        decoration:
                                          const BoxDecoration(
                                          color:  Color(0xffECC055),
                                          borderRadius: BorderRadius.only( 
                                            topLeft: Radius.elliptical(400, 690), 
                                            topRight: Radius.circular(300),
                                            bottomRight: Radius.circular(300) 
                                          ),
                                          ),
                                        ),
                                    ),
                                  ), 
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                     Container(
                        height: MediaQuery.of(context).size.height * .25,
                        width: MediaQuery.of(context).size.width * .43,
                   
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                       child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("asset/lock.png", width: 120,),     
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20,),


                 // ---- Second section " Artistic thinking" -----

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Artistic thinking", style: TextStyle(fontSize: 30, ),),
                      Row(
                        children: [
                          Image.asset("asset/crown.png", width:20 ),
                          const Text(" 35/40", style: TextStyle(color: Colors.black26, fontSize: 15),),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 10,),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const VerbalSkillsScreen(),
                            ),
                            );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width * .43,
                                      
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Unit 1", style: TextStyle(fontSize: 25),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("asset/crown.png", width: 16),
                                  Container(
                                    margin: const EdgeInsets.all(3),
                                    height: 10,
                                    width: 90,
                                    decoration:const BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.only( topLeft: Radius.elliptical(400, 690), topRight: Radius.circular(300),
                                          bottomRight: Radius.circular(300)),              
                                    ), 
                                    child: FractionallySizedBox(
                                      alignment: Alignment.centerLeft,
                                      widthFactor: 0.8,
                                      child: Container(
                                        decoration:
                                          const BoxDecoration(
                                          color:  Color(0xffECC055),
                                          borderRadius: BorderRadius.only( 
                                            topLeft: Radius.elliptical(400, 690),
                                            topRight: Radius.circular(300),
                                            bottomRight: Radius.circular(300) 
                                          ),
                                          ),
                                        ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                   
                     Container(
                        height: MediaQuery.of(context).size.height * .25,
                        width: MediaQuery.of(context).size.width * .43,                   
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                       child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("asset/lock.png", width: 120,),     
                          ],
                        ),
                      ), 
                    ],
                  ),

                  const SizedBox(height: 20,),

                  // ---- Third section "Verbal skills" ----- 
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Verbal skills", style: TextStyle(fontSize: 30, ),),
                      Row(
                        children: [
                          Image.asset("asset/crown.png", width:20 ),
                          const SizedBox(width: 5,),
                          const Text(" 3/40", style: TextStyle(color: Colors.black26, fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 10,),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const VerbalSkillsScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width * .43,
                                      
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Unit 1", style: TextStyle(fontSize: 25),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("asset/crown.png", width: 16),
                                  Container(
                                    margin: const EdgeInsets.all(3),
                                    height: 10,
                                    width: 90,
                                    decoration:const BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.only( 
                                        topLeft: Radius.elliptical(400, 690), 
                                        topRight: Radius.circular(300),
                                        bottomRight: Radius.circular(300)
                                      ),              
                                    ), 
                                    child: FractionallySizedBox(
                                      alignment: Alignment.centerLeft,
                                      widthFactor: 0.2,
                                      child: Container(
                                        decoration:
                                          const BoxDecoration(
                                          color:  Color(0xffECC055),
                                          borderRadius: BorderRadius.only( 
                                            topLeft: Radius.elliptical(400, 690), 
                                            topRight: Radius.circular(300),
                                            bottomRight: Radius.circular(300) 
                                          ),
                                          ),
                                        ),
                                    ),
                                  ),  
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                   
                     Container(
                        height: MediaQuery.of(context).size.height * .25,
                        width: MediaQuery.of(context).size.width * .43,
                   
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                       child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("asset/lock.png", width: 120,),     
                          ],
                        ),
                      ), 
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}