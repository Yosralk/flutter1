import 'package:flutter/material.dart';
import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xCDf59842),
              fontWeight: FontWeight.w200,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Image.network(
                    "https://png.pngtree.com/png-clipart/20191101/ourlarge/pngtree-orange-yellow-welcome-font-gradient-wordart.jpg",
                    height: 100,
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: decorationclass("Username", "Enter your username", Icons.person),
                    validator: (username) {
                      if (username == null || username.isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: decorationclass("Password", "Enter your password", Icons.lock),
                    obscureText: true,
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                      },
                      child: Text("Forgot Your Password?"),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xCDf59842),
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                    child: Text('Login'),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.network("https://imageurl.com/google_icon.png"),
                        onPressed: () {
                          // Handle Google login
                        },
                      ),
                      IconButton(
                        icon: Image.network("https://ci3.googleusercontent.com/meips/ADKq_Na3BKP36iGgcq_DRwpf_hh5iMEy_Ys0uUslpsycpkvd_gPai9l0hFAD2XKJE4MJynkU6Wy3JuzJxnnqXV1TFICjypiHpSBCrKET7YboHsjORw-hnzoiHQJOjKPS31nS5Ofg7UdPwIgPhHK4qRtGrZAq5PHepxqFl4Pf2R79XLn11sntaz5q08M=s0-d-e1-ft#https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/1200px-2021_Facebook_icon.svg.png"), // Replace with actual Facebook icon URL
                        onPressed: () {
                          // Handle Facebook login
                        },
                      ),
                      IconButton(
                        icon: Image.network("https://imageurl.com/twitter_icon.png"),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen2()),
                      );
                    },
                    child: Text("Don't have an account? Sign Up"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration decorationclass(String label, String hint, IconData icon) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orange.shade900,
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orange.shade700,
          width: 2,
        ),
      ),
      filled: true,
      suffixIcon: Icon(icon),
    );
  }
}
