import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            //----------UP BAR container
            Container(
              width: 400,
              height: 60,
              color: Color.fromARGB(255, 249, 246, 242),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text('Verbal skills', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Color.fromARGB(255, 255, 221, 0)),
                      SizedBox(width: 5),
                      Text('3', style: TextStyle(color: Color.fromARGB(255, 250, 238, 0))),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.diamond, color: Color.fromARGB(255, 18, 104, 233)),
                      SizedBox(width: 5),
                      Text('213', style: TextStyle(color: Color.fromARGB(255, 18, 104, 233))),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Main container
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                
                  Container(
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black), 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 8),
                        Image.asset('images/horse.png', width: 50, height: 50),
                        SizedBox(height: 8),
                        const Text(
                          'Unit 1',
                          style: TextStyle(color: Colors.black), 
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Image.asset('images/progres.png', width: 90, height: 30),
                      ],
                    ),
                  ),

                  //--------
                  SizedBox(height: 20),

                  //---- circle container 
                      Container(
                       width: 100,
                         height: 100,
                            decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         border: Border.all(color: Color.fromARGB(255, 119, 133, 145), width: 7), 
                             ),
                                 child: Padding(
                               padding: EdgeInsets.all(10), 
                                 child: Container(
                                   decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                 image: AssetImage('images/pin.png'),
                                fit: BoxFit.cover, 
                               alignment: Alignment.center, 
                               ),
                             ),
                           ),
                          ),
                        ),
                         //-- first row container
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                       width: 100,
                         height: 100,
                            decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         border: Border.all(color: Color.fromARGB(255, 119, 133, 145), width: 7), //-- to make out circle border
                             ),
                                 child: Padding(
                               padding: EdgeInsets.all(10), 
                                 child: Container(
                                   decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                 image: AssetImage('images/book.png'),
                                fit: BoxFit.cover, 
                               alignment: Alignment.center, 
                               ),
                             ),
                           ),
                          ),
                        ),
                      Container(
                       width: 100,
                         height: 100,
                            decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         border: Border.all(color: Color.fromARGB(255, 119, 133, 145), width: 7), //-- to make out circle border
                             ),
                                 child: Padding(
                               padding: EdgeInsets.all(10), 
                                 child: Container(
                                   decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                 image: AssetImage('images/sicle.png'),
                                fit: BoxFit.cover, 
                               alignment: Alignment.center, 
                               ),
                             ),
                           ),
                          ),
                        ),
                    ],
                  ),

                  //-- second row container
                      Container(
                       width: 100,
                         height: 100,
                            decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         border: Border.all(color: Color.fromARGB(255, 119, 133, 145), width: 7), //-- to make out circle border
                             ),
                                 child: Padding(
                               padding: EdgeInsets.all(10), 
                                 child: Container(
                                   decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                 image: AssetImage('images/lock2.png'),
                                fit: BoxFit.cover, 
                               alignment: Alignment.center, 
                               ),
                             ),
                           ),
                          ),
                        ),
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                       width: 100,
                         height: 100,
                            decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         border: Border.all(color: Color.fromARGB(255, 119, 133, 145), width: 7), //-- to make out circle border
                             ),
                                 child: Padding(
                               padding: EdgeInsets.all(10), 
                                 child: Container(
                                   decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                 image: AssetImage('images/lock2.png'),
                                fit: BoxFit.cover, 
                               alignment: Alignment.center, 
                               ),
                             ),
                           ),
                          ),
                        ),
                        //--last single contaner 
                      Container(
                       width: 100,
                         height: 100,
                            decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         border: Border.all(color: Color.fromARGB(255, 119, 133, 145), width: 7), //-- to make out circle border
                             ),
                                 child: Padding(
                               padding: EdgeInsets.all(10), 
                                 child: Container(
                                   decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                 image: AssetImage('images/lock2.png'),
                                fit: BoxFit.cover, 
                               alignment: Alignment.center, 
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
          ],
        ),
      ),
    );
  }
}
