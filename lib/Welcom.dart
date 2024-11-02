import 'package:flutter/material.dart';
import 'Function.dart';
import 'Screen2.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
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
                  "https://image.similarpng.com/thumbnail/2021/09/Fashion-elegant-woman-silhouette-logo-template-on-transparent-background-PNG.png",
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
                      // Handle "Forgot Password" action here
                    },
                    child: Text("Forgot Your Password?"),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen2');
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
                        // Handle Facebook login
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.telegram),
                      onPressed: () {
                        // Handle Telegram login
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.snapchat),
                      onPressed: () {
                        // Handle Snapchat login
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen3');
                  },
                  child: Text("Don't have an account? Sign Up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
