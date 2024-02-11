import 'package:flutter/material.dart';

class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //----------UP BAR container
          Container(
            width: 400,
            height: 60,
            color: Color.fromARGB(255, 249, 246, 242),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Align the text in the center horizontally
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Challenges',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              ],
            ),
          ),
            //---------------contianer
           
          SizedBox(height: 30), //----- Add space

          
          Container(
  width: 400,
  height: 100, 
  padding: EdgeInsets.symmetric(horizontal: 20), 
  decoration: BoxDecoration(
    border: Border.all(color: const Color.fromARGB(255, 107, 101, 101), width: 2), 
    borderRadius: BorderRadius.circular(10), 
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // Image 
      Expanded(
        child: Image.asset('images/pro1.png', width: 100,height: 100), 
      ),
      SizedBox(width: 10), 
      
      Expanded(
        flex: 2,
        child: Text(
          'Complete 1000 word streak       Win 1000XP along with 300 diamonds. .',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ],
  ),
),
          SizedBox(height: 20), 
          Container(
            width: 400,
            height: 60,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Row(
              children: [
                Text('Achivment',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              ],
            ),
          ),

             Container(width: 400, height: 100, 
               padding: EdgeInsets.symmetric(horizontal: 20), 
                 decoration: BoxDecoration( border: Border.all(color: const Color.fromARGB(255, 107, 101, 101), width: 2), 
                   borderRadius: BorderRadius.circular(10), ),
                      child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
      
      Expanded(
        child: Image.asset('images/pro2.png',
            width: 100,
            height: 100), 
      ),
      SizedBox(width: 10), 
      
      Expanded(
        flex: 2,
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ],
  ),
),              
                          
                   Container(
  width: 400,
  height: 100,
  padding: EdgeInsets.symmetric(horizontal: 20), 
  decoration: BoxDecoration(
    border: Border.all(color: const Color.fromARGB(255, 107, 101, 101), width: 2), 
    borderRadius: BorderRadius.circular(10), 
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      
      Expanded(
        child: Image.asset('images/pro3.png', //--add image from the left of the box
            width: 100,
            height: 100), 
      ),
      SizedBox(width: 10), 
      
      Expanded(
        flex: 2,
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ],
  ),
),              
          
                   Container(
  width: 400,
  height: 100, 
  padding: EdgeInsets.symmetric(horizontal: 20), 
  decoration: BoxDecoration(
    border: Border.all(color: const Color.fromARGB(255, 107, 101, 101), width: 2), 
    borderRadius: BorderRadius.circular(10), 
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      
      Expanded(
        child: Image.asset('images/pro4.png',
            width: 100,
            height: 100), 
      ),
      SizedBox(width: 10), 
      
      Expanded(
        flex: 2,
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ],
  ),
),                 
        

        ],
      ),
    );
  }
}
