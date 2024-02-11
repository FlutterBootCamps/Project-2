
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Profile"),
        titleTextStyle: const TextStyle( fontSize: 30),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),

      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                // ----- User information ------
                Container(
                    padding: const EdgeInsets.only(left: 10.0, bottom:20, top:20),
                    decoration: const BoxDecoration(
                      border: Border( 
                        bottom: BorderSide(color: Colors.black12, 
                        width: 3, 
                        style:BorderStyle.solid
                      ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Nidhi Pandya", style: TextStyle(fontSize: 30),),
                            const Text("Nidhi12", style: TextStyle(fontSize: 20, color: Colors.black26),),
                            const SizedBox(height: 8,),
                            Row(
                              children: [
                                Image.asset("asset/clock.png", width: 15,), 
                                const Text(" Joined March 2022", style: TextStyle(fontSize: 15)),
                              ],
                            )
                          ],
                        ),
                        Image.asset('asset/ellipse 1.png', fit: BoxFit.cover),                         
                      ],
                    ),
                  ),
                  
                Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                
                child: Column(
                  children: [
                  const SizedBox(height: 10),
                  
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 3, color: Colors.black12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Row(
                          children: [
                            const SizedBox(width: 1,) ,
                            Image.asset("asset/party.png", width: 35,),
                            const SizedBox(width: 15,),
                            const Text("Friends updates", style: TextStyle(fontSize: 20)),
  
                          ],       
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [ Icon(Icons.arrow_forward_ios_sharp, size:20, color: Colors.black26), ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // ----- Statistics -------
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Statistics", textAlign: TextAlign.left, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  
                  const SizedBox(height: 12),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .43,
                            height: MediaQuery.of(context).size.height * .08,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 3, color: Colors.black12),              
                              ),
                          
                                padding: const EdgeInsets.all(8),
                                child: Row(      
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,              
                                  crossAxisAlignment: CrossAxisAlignment.center,
                            
                                  children: [
                                      Center( child:
                                      Image.asset("asset/flame.png", height: 30,)
                                      ),
                                      const SizedBox(width: 15),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[ 
                                        Text("3", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
                                        Text("Day Streak", style:TextStyle(fontSize: 15, color: Colors.black26),),
                                        ],
                                      ),
                                    ],
                                  ) ,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * .43,                            
                                  height: MediaQuery.of(context).size.height * .08,

                                      decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 3, color: Colors.black12),              
                                    ),
                                
                                      padding: const EdgeInsets.all(8),
                                      child: Row(      
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,              
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                  
                                        children: [
                                            Center( child:
                                            Image.asset("asset/power.png", height: 30,)
                                            ),
                                            const SizedBox(width: 15),
                                            const Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[ 
                                              Text("1432", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
                                              Text("Total XP", style:TextStyle(fontSize: 15, color: Colors.black26),),
                                              ],
                                            ),
                                          ],
                                        ) ,
                                      ),
                  
                  
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                             width: MediaQuery.of(context).size.width * .43,
                             height: MediaQuery.of(context).size.height * .08,

                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 3, color: Colors.black12),              
                            ),
                        
                              padding: const EdgeInsets.all(8),
                              child: Row(      
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,              
                                crossAxisAlignment: CrossAxisAlignment.center,
                          
                                children: [
                                    Center( child:
                                    Image.asset("asset/3rd-place-medal.png", height: 30,)
                                    ),
                                    const SizedBox(width: 15),
                                    const Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[ 
                                      Text("Bronze", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
                                      Text("Current League", style:TextStyle(fontSize: 13, color: Colors.black26),),
                                      ],
                                    ),
                                  ],
                                ) ,
                              ),
                        
                        Container(
                          width: MediaQuery.of(context).size.width * .43,
                          height: MediaQuery.of(context).size.height * .08,


                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 3, color: Colors.black12),              
                        ),
                    
                          padding: const EdgeInsets.all(8),
                          child: Row(      
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,              
                            crossAxisAlignment: CrossAxisAlignment.center,
                      
                            children: [
                                Center( child:
                                Image.asset("asset/bx_medal.png", height: 30,)
                                ),
                                const SizedBox(width: 15),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[ 
                                  Text("0", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
                                  Text("Top 3 Finishes", style:TextStyle(fontSize: 15, color: Colors.black26),),
                                  ],
                                ),
                              ],
                            ) ,
                          ),
                    
                  
                        ],
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 25,),

                // ------ User friends -------
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Friends", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      InkWell(
                        child: Text("ADD FRIENDS", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color(0xff02A1FB)),
                        ),
                      ),
                    ],
                  ),
              
                  const SizedBox( height: 10),
              
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 3, color: Colors.black12),              
                    ),
                    child:  Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),

                          decoration: const BoxDecoration(
                              border: Border( 
                              bottom: BorderSide(
                                color: Colors.black12, 
                                width: 2, 
                                style:BorderStyle.solid
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            //  GestureSettings(child: 
                             InkWell(
                              // onTap: (index){
                              //   // setState(() {
                                
                              //   // });
                              // },
                              child:
                               Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("FOLLOWING", style: TextStyle(fontSize: 15, color: Color(0xff02A1FB), fontWeight: FontWeight.bold ),
                                    ),
                                  ],
                                ),
                               ),
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text("FOLLOWERS", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ), ),
                               ],
                             ),
                            ],
                           ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                              border: Border( 
                              bottom: BorderSide(
                                color: Colors.black12, 
                                width: 2, 
                                style:BorderStyle.solid
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(radius: 20, backgroundColor: Color(0xffAB70DF), 
                                    child: Text("H", style: TextStyle(fontSize: 16, color: Colors.white),),
                                  ),
                                  SizedBox(width: 15,) ,
                                   Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Hardi", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
                                      ),
                                      Text("4367 XP", style: TextStyle(fontSize: 18, color: Colors.black26 ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [ Icon(Icons.arrow_forward_ios_sharp, size:20, color: Colors.black26), ],
                              ),
                            ],
                          ),
                        ),
                         const Padding(
                           padding:  EdgeInsets.all(15.0),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(radius: 20, backgroundColor: Color(0xffDF7070), 
                                    child: Text("H", style: TextStyle(fontSize: 16, color: Colors.white),),
                                  ),
                                   SizedBox( width: 15,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("Krishna", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
                                        ),
                                        Text("2334 XP", style: TextStyle(fontSize: 18, color: Colors.black26 ),
                                        ),
                                      ],
                                    ),
                                ],
                              ), 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [ Icon(Icons.arrow_forward_ios_sharp, size:20, color: Colors.black26,), ],
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
                  padding: const EdgeInsets.all(12),
            
                  child: 
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("asset/cat.png", width: 160, ),                    
                           const Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Invite your friends ", 
                                  textAlign: TextAlign.left, 
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)
                                ),
                                Text("Tell your friends it’s free and fun to learn on Mental up!", 
                                  textAlign: TextAlign.left,  
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 15),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),

                          boxShadow: const [ BoxShadow(
                            color: Color.fromARGB(102, 2, 160, 251),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(5, 8),
                            ),
                          ],
                          ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff02A1FB),
                            fixedSize: const Size(270, 50),                          
                          ),
                          onPressed: (){}, 
                          child: 
                          const Text("INVITE FRIENDS", style: TextStyle(color: Colors.white, fontSize: 16)),                     
                        ),
                      ),
                      
                      const SizedBox(height: 10),                       
                      
                    ],
                  ),
                ),              
              ],
            ),
          )
          ],
          ),
        ),
      ],
     ),   
    );
  }
}