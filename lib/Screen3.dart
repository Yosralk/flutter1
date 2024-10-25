import 'package:flutter/material.dart';
import 'package:flutter1/Screen1.dart';


class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LOGIN",
          style: TextStyle(
              fontSize: 20,
              color: Colors.deepOrange,

          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(height: 30),
          TextFormField(
            decoration: decorationclass("Username", "yoser", Icons.person),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: decorationclass("Password", "*****",
                Icons.visibility_off_outlined),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Handle login logic here (e.g., authenticate user)
              // After successful login, navigate to the welcome screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen1()),
              );
            },
            child: Text('Login'),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              // Navigate to the sign-up screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen1()),
              );
            },
            child: Text("Login"),

            ),
            ],
          ),
        ),
      ),
    );
  }
}

InputDecoration decorationclass(String lbl, String hint, IconData icon) {
  return InputDecoration(
    labelText: lbl,
    hintText: hint,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.orange.shade900,
        width: 3,
      ),
    ),
    filled: true,
    suffixIcon: Icon(icon),
  );
}