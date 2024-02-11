import 'package:flutter/material.dart';
import 'package:project_4/screen/bottom_nav_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInState();
}

class _LogInState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(250, 255, 242, 242),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Image(image: AssetImage('assets/MENTAL ^up^.png')),
              SizedBox(height: 50),
              Container(
                height: 45,
                width: 280,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 45,
                width: 280,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Forget Password?',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 45,
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavScreen(),
                        ));
                  },
                  child: Text(
                    'Go!',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account yet? ",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.green[700],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                    image: AssetImage(
                        'assets/Screenshot 2022-01-25 at 1.24 1.png')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
