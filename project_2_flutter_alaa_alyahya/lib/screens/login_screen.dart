import 'package:flutter/material.dart';
import 'package:project_2_flutter_alaa_alyahya/screens/bottom_navigation_bar_screen.dart';
// import 'package:project_2_flutter_alaa_alyahya/home_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              
              // height: MediaQuery.of(context).size.height * .6,
              width: MediaQuery.of(context).size.width * .7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Image.asset("asset/nameGame.png", ),
                  
                  const SizedBox(height: 45,),
                  
                  TextField(
                    controller: userName,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      hintText: "Username",
                      hintStyle: const TextStyle(color: Color.fromARGB(95, 0, 0, 0), fontSize: 18, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white,), borderRadius: BorderRadius.circular(25.0), ),
                    ),
                  ),
                  
                  const SizedBox(height: 20,),
              
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Color.fromARGB(95, 0, 0, 0), fontSize: 18, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white,), borderRadius: BorderRadius.circular(25.0), ),
                    ),
                  ),
                  
                  const SizedBox(height: 25,),
              
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  
                  const SizedBox(height: 20,),
              
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffEB9F4A),
                      fixedSize: const Size(270, 50),
                    ), 
                    
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const BottomNavigationBarScreen()),
                      );
                    },
                    
                    child: 
                      const Text("Go", 
                      style: TextStyle(color: Colors.white, fontSize: 22)
                      ),
                  ),
                  
                  const SizedBox(height: 25,),
              
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have account yet?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                      Text(" Sign Up", style: TextStyle(color: Color(0xff77B29F), fontWeight: FontWeight.bold, fontSize: 16),),
                    ],            
                  ),
                
                ], 
              ),
            ),
            
            Image.asset("asset/themeGame.png",height: 368, width: 428,),
          ],
        ),
      ),
    );
  }
}