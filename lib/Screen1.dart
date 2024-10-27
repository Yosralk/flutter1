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
            "SIGN UP",
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
                  //Image.network(
                  //  "https://png.pngtree.com/png-clipart/20191101/ourlarge/pngtree-orange-yellow-welcome-font-gradient-wordart.jpg",
                 // ),
                  TextFormField(
                    decoration: decorationclass("username", "Email", Icons.person),
                    validator: (username) {
                      if (username == null || username.isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      print("Username: $value");
                    },
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: decorationclass("Password", "Enter the Password", Icons.lock),
                    obscureText: true,
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      print("Password: $value");
                    },
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Forgot Your Password?"),
                    ),
                  ),
                  SizedBox(height: 30),
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
                    child: Text("Login"),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.network("https://imageurl.com/google_icon.png"),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.network("https://imageurl.com/facebook_icon.png"),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.network("https://imageurl.com/twitter_icon.png"),
                        onPressed: () {},
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

  InputDecoration decorationclass(String lbl, String hint, IconData icon) {
    return InputDecoration(
      labelText: lbl,
      hintText: hint,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orange.shade900,
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orange,
          width: 2,
        ),
      ),
      filled: true,
      suffixIcon: Icon(icon, color: Colors.orange),
    );
  }
}
