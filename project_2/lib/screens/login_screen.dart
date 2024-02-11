import 'package:flutter/material.dart';
import 'package:project_2/screens/dash.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 246, 242),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                'images/TextImage.png',
                width: 600,
                height: 150,
              ),
            ),
            //-- UserName text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Username',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            //-- Password text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  GestureDetector(
                    child: Text(
                      'Forget Password?',
                    ),
                  ),
                ],
              ),
            ),

            //-------- Go Button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 90),
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to home screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dash()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                  child: Text('Go', style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),

            //------- Dont have account text
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account yet? ",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),

            //------- Image at the bottom
            Expanded(
              child: Image.asset(
                'images/Din.png', 
                width: double.infinity, //  fills the width of the screen
                fit: BoxFit.fill, // to fill the space
              ),
            ),
          ],
        ),
      ),
    );
  }
}

