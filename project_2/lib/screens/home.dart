
import 'package:flutter/material.dart';
import 'package:project_2/screens/skills_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.local_fire_department_outlined, color: Colors.orange), 
                    SizedBox(width: 5), 
                    Text('3', style: TextStyle(color: Colors.orange)), 
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.add_box, color: Color.fromARGB(255, 74, 207, 207)), 
                    SizedBox(width: 5), 
                    Text('1432 XP', style: TextStyle(color: Color.fromARGB(255, 74, 207, 207))),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.favorite, color: Color.fromARGB(255, 239, 0, 0)), 
                    SizedBox(width: 5), 
                    Icon(Icons.insert_link_rounded, color: Colors.red), 
                  ],
                ),
              ],
            ),
          ),

               
          SizedBox(height: 20), 

            //--container box  feild first 2

            //-- text up the box
          Align(
             alignment: Alignment.centerLeft, 
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0), 
                  child: Text(
                    'Logical reasoning', 
                         style: TextStyle(fontWeight: FontWeight.w800), 
                          ),
                            ),
                              ),

          //--container box  feild first 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              GestureDetector(
  onTap: () {
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Skills()),
    );
  },
  child: Container(
    width: 140,
    height: 150,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 230, 230, 228),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 8),
        const Text(
          'Unit 1',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 80),
        Image.asset('images/progres.png'),
      ],
    ),
  ),
),


              SizedBox(width:2), 

              
              Container(
                width: 140,
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 228),
                  borderRadius: BorderRadius.circular(15), 
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 8), 
                    const Text(
                      '', 
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8), 
                    Image.asset('images/lock.png',width: 50,height: 50,), 
                  ],
                ),
              ),
                
              
            ],
          ),
                  
          SizedBox(height: 20), 

            //--container box second 2  feild
          Align(
             alignment: Alignment.centerLeft, 
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0), 
                  child: Text(
                    'Artistic thinking', 
                         style: TextStyle(fontWeight: FontWeight.w800), 
                          ),
                            ),
                              ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              GestureDetector(
  onTap: () {
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Skills()),
    );
  },
  child: Container(
    width: 140,
    height: 150,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 230, 230, 228),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 8),
        const Text(
          'Unit 1',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 80),
        Image.asset('images/progres.png'),
      ],
    ),
  ),
),
              SizedBox(width:2), 

              
              Container(
                width: 140,
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 228),
                  borderRadius: BorderRadius.circular(15), 
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 8), 
                    const Text(
                      '', 
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8), 
                    Image.asset('images/lock.png',width: 50,height: 50,), 
                  ],
                ),
              ),
                
              
            ],
          ),
              
          SizedBox(height: 20), 

            //--container box third 2 feild
          Align(
             alignment: Alignment.centerLeft, 
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0), 
                  child: Text(
                    'Verbal skills', 
                         style: TextStyle(fontWeight: FontWeight.w800), 
                          ),
                            ),
                              ),

         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              GestureDetector(
  onTap: () {
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Skills()),
    );
  },
  child: Container(
    width: 140,
    height: 150,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 230, 230, 228),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 8),
        const Text(
          'Unit 1',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 80),
        Image.asset('images/progres.png'),
      ],
    ),
  ),
),

              SizedBox(width:2), 

              
              Container(
                width: 140,
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 228),
                  borderRadius: BorderRadius.circular(15), 
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 8), 
                    const Text(
                      '', 
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8), 
                    Image.asset('images/lock.png',width: 50,height: 50,), 
                  ],
                ),
              ),
                
              
            ],
          ),
        ],
        
      ),
    );
  }
}