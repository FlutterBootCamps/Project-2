import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      backgroundColor: const Color(0xffFBF5F2),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        title: const Text("Challenges"),
        titleTextStyle: const TextStyle(fontSize: 30),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:30, horizontal: 20),
            child: Column(
              children: [
                
                 Container(  
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black12),
                    borderRadius: BorderRadius.circular(20),                     
                  ),
                  padding: const EdgeInsets.all(10),
            
                  child: Row(
                    children: [
                      Image.asset("asset/Group.png"),                    
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.only(left: 12),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Complete 1000 word streak", 
                              textAlign: TextAlign.left, 
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                              ),
                              Text("Win 1000XP along with 300 diamonds.", 
                              textAlign: TextAlign.left,  
                              style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
              const SizedBox(height: 20,),

              const Row(
                children: [
                  Text("Achievements", 
                  style: TextStyle(fontSize: 30, )),
                ],
              ),
              
              const SizedBox(height: 20,),

              Container(                
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black12),
                    borderRadius: BorderRadius.circular(20),                     
                  ),
                  padding: const EdgeInsets.all(10),
            
                  child: Row(
                    children: [
                      Image.asset("asset/Plant1.png",  width: 120,),                    
                      const Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lorem Ipsum ", 
                              textAlign: TextAlign.left, 
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                            ),
                            Text("is simply dummy text of the printing and typesetting industry.", 
                              textAlign: TextAlign.left,  
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              
              const SizedBox(height: 35,),

              Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black12),
                    borderRadius: BorderRadius.circular(20),                     
                  ),
                  padding: const EdgeInsets.all(10),
            
                  child: Row(
                    children: [
                      Image.asset("asset/Plant2.png" , width: 120,),                    
                      const Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lorem Ipsum ",
                            textAlign: TextAlign.left, 
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                            ),
                            Text("is simply dummy text of the printing and typesetting industry.", 
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              
              const SizedBox(height: 25,),
              
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black12),
                    borderRadius: BorderRadius.circular(20),                     
                  ),
                  padding: const EdgeInsets.all(10),
            
                  child: Row(
                    children: [
                      Image.asset("asset/Basketball.png",  width: 120,),                    
                      const Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [                            
                               Text("Lorem Ipsum ", 
                               textAlign: TextAlign.left,
                               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                               ),
                              Text("is simply dummy text of the printing and typesetting industry.", 
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 17),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            
              ],
            ),
          )

      ],),
    );
  }
}