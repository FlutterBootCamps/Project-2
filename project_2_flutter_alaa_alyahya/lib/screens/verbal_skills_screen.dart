import 'package:flutter/material.dart';

class VerbalSkillsScreen extends StatelessWidget {
  const VerbalSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Verbal Skills"),
            const SizedBox(width: 20,),
            Image.asset("asset/crown.png", width:20),
            const Text(" 3 ", style: TextStyle(color: Color(0xffECC055), fontSize: 18),),
            const SizedBox(width: 10,),
            Image.asset("asset/diamond.png", width: 20),
            const Text(" 213 ", style: TextStyle(fontSize: 18, color: Color(0xff02A1FB),),)
          ],
        ),
        titleTextStyle: const TextStyle(fontSize: 30),
       ),

       body:
       SafeArea(
        child: ListView(
          children: [
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                children: [
                Stack(
                  children: [ 
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(),
                          Positioned(
                            child: ClipRRect( 
                              borderRadius:BorderRadius.circular(100),
                              child: Image.asset("asset/horse.png"),
                           ),
                            ),
                        ],
                      ),
                    ) ,
                 
                    Row(                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,                     
                    children: [
                      const SizedBox(height: 50,),
                      Container(
                        margin: const EdgeInsets.only(top: 50, bottom: 20),
                        padding: const EdgeInsets.all(40),
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width * 0.48,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black26,
                          width: 3,                          
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only( top:10),
                          child: Column(                        
                            children: [
                            const Text("Unite 1", style: TextStyle(fontSize: 20)), 
                          Row(
                            children: [
                              Image.asset("asset/crown.png", width: 20,),
                          /// progress bar
                              const Text(" 3/40 ", style: TextStyle(fontSize: 12, color: Colors.black26),),
                            ],
                          ),],
                          ),
                        ),
                      ),
                    ],
                  ),
                    
                  ],
                ),

                /// First row of circle 'pencil'
                Stack(
                  children: [                    
                    Row(                    
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,                     
                      children: [
                        Container(
                          margin: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 12, 
                              color: Colors.black26,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color:const Color(0xff72BFC7),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xffFBF5F2), 
                                width: 8
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Image.asset("asset/pencil.png", width: 100,),
                            ),
                          ),
                        ),
                    ],
                  ),
                    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 120, width: 120,),
                      Positioned(
                        child: ClipRRect( 
                          child: Image.asset("asset/crown.png", width: 45,),
                        ),
                        ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 114, width: 120,),
                      Positioned(
                        child: ClipRRect( 
                          child: Text("1"),
                        ),
                      ),
                    ],
                  ),
                  ],
                ),
                const Text("Intro", style: TextStyle(fontSize: 20),), 
                
                //  second row of circle 'Phrases and Travel'
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Column(
                       children: [
                         Stack(
                          children: [                    
                            Row(                    
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,                     
                          children: [
                            Container(
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 12, 
                                  color: Colors.black26,
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:const Color(0xff72BFC7),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xffFBF5F2), 
                                    width: 8
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Image.asset("asset/book.png", width: 60,),
                                ),
                              ),
                            ),
                            ],
                          ),
                            
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                          const SizedBox(height: 120, width: 105,),
                          Positioned(
                            child: ClipRRect( 
                              child: Image.asset("asset/crown.png", width: 45,),
                            ),
                            ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                          SizedBox(height: 114, width: 125,),
                          Positioned(
                            child: ClipRRect( 
                              child: Text("1"),
                            ),
                          ),
                          ],
                        ),
                        ],
                      ),                
                      const Text("Phrases", style: TextStyle(fontSize: 20),), 

                       ],
                     ),
                
                 Column(
                   children: [
                     Stack(
                      children: [                    
                        Row(                    
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,                     
                          children: [
                            Container(
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 12, 
                                  color: Colors.black26,
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:const Color(0xff72BFC7),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xffFBF5F2), 
                                    width: 8
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Image.asset("asset/bike.png", width: 60,),
                                ),
                              ),
                            ),
                        ],
                      ),
                        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(height: 120, width: 110,),
                          Positioned(
                            child: ClipRRect( 
                              child: Image.asset("asset/crown.png", width: 45,),
                            ),
                            ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 114, width: 129,),
                          Positioned(
                            child: ClipRRect( 
                              child: Text("1"),
                            ),
                          ),
                        ],
                      ),
                      ],
                    ),    
                    const Text("Travel", style: TextStyle(fontSize: 20),), 

                   ],
                 ),
                
                   ],
                ), 
                
                //// third row of circle 'lock'
                Column(
                    children: [
                       Stack(
                        children: [                    
                          Row(                    
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,                     
                            children: [
                              Container(
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 12, 
                                    color: Colors.black26,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:const Color(0xff72BFC7),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xffFBF5F2), 
                                      width: 8
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(35.0),
                                    child: Image.asset("asset/lock.png", width: 30,),
                                  ),
                                ),
                              ),
                          ],
                        ),
                          
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 120, width: 118,),
                            Positioned(
                              child: ClipRRect( 
                                child: Image.asset("asset/crown.png", width: 45,),
                              ),
                              ),
                          ],
                        ),
                        ],
                      ),                     
                    ],
                  ),

                // fourth row of circle 'lock' 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Stack(
                      children: [                    
                        Row(                    
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,                     
                          children: [
                            Container(
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 10, 
                                  color: Colors.black26,
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:const Color(0xff72BFC7),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xffFBF5F2), 
                                    width: 7
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(35.0),
                                  child: Image.asset("asset/lock.png", width: 30,),
                                ),
                              ),
                            ),
                          ],
                        ),
                          
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 120, width: 106,),
                            Positioned(
                              child: ClipRRect( 
                                child: Image.asset("asset/crown.png", width: 45,),
                              ),
                            ),
                          ],
                        ),
                        ],
                      ),

                      Stack(
                        children: [                    
                          Row(                    
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,                     
                            children: [
                              Container(
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 10, 
                                    color: Colors.black26,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:const Color(0xff72BFC7),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xffFBF5F2), 
                                      width: 7
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(35.0),
                                    child: Image.asset("asset/lock.png", width: 30,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 120, width: 106,),
                            Positioned(
                              child: ClipRRect( 
                                child: Image.asset("asset/crown.png", width: 45,),
                              ),
                            ),
                          ],
                        ),
                        ],
                      ),
                  ],
                ),
                ],
              ),
             ),
          ],
        ),
      ),
    );
  }
}