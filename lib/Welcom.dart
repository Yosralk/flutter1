
import 'package:flutter/material.dart';
import 'Function.dart';
import 'Screen2.dart';



class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Welcom",
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
                    "https://ouch-cdn2.icons8.com/ZerfIA6CiU26D_2pgIAWWJfGfgHKoF_X_RawL6LMibQ/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNjIw/LzdlNmIzMjVjLWVi/MWYtNDBhNC1iZTkx/LTBlNTU3OWJjNDIx/ZC5zdmc.png",
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
                        icon: Icon(Icons.facebook_outlined),
                        onPressed: () {
                          // Handle Google login
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.telegram),
                        onPressed: () {
                          // Handle Facebook login
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.snapchat),
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
      prefixIcon: Icon(icon),
      border: OutlineInputBorder(),
    );
  }


