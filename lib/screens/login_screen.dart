import 'package:flutter/material.dart';
import 'package:maram_project_2/screens/bottom_bar.dart';
import 'package:maram_project_2/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //controller for each text fields
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //here the var for show error message
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/title.png', width: 300,),
                const SizedBox(
                  height: 80,
                ),
                 //username field
                 TextField(
                  controller: usernameController,
                  decoration:
                  const InputDecoration(
                    hintText: 'Username' ,
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                    color:  Color(0xff999999)),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide.none,
                    ),
                  )
                ),
                const SizedBox(
                  height: 30,
                ),
                 //password fields
                 TextField(
                   controller: passwordController,
                    obscureText: true,
                    decoration:
                    const InputDecoration(
                      hintText: 'Password' ,
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:  Color(0xff999999)),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide.none,
                      ),
                    )
                ),
                const SizedBox(
                  height: 15,
                ),
                //here will show the error Message if the errorMessage var assign it text
                Text(errorMessage, style: TextStyle(color: Colors.red),),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: const Text("Forgot Password?" ,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold ,
                      color: Colors.black
                    ),)),

                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    //check for each fields if it is empty, if one of them empty will show the message
                    if(usernameController.text.isEmpty || passwordController.text.isEmpty){
                      setState(() {
                        // assign error message to show it on the screen
                        errorMessage = "Must fill all fields";
                      });
                    }
                    else{
                      //if no error, will navigate to BottomNavBar, from this widget we will show our pages with BottomNavigationBar
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const BottomNavBar();
                      }));
                    }
                  },
                  //style for button
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
                    backgroundColor: MaterialStateProperty.all(const Color(0XFFEB9F4A)),
                  ),
                  child: const Text(
                    "GO",
                    style:
                    TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Text("Don’t have account yet?", style: TextStyle(fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){}, child: const Text("Sign Up", style: TextStyle(color: Color(0xFF77B29F), fontWeight: FontWeight.bold),))
                  ],
                ),
                Image.asset('assets/images/background.png')

              ],
            ),
          ),
        ),
      ),

    );
  }
}
