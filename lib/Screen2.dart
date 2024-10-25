import 'package:flutter/material.dart';
import 'package:flutter1/Screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIGN UP",
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(11),
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
                decoration: decorationclass("Email", "Jody2@gmail.com", Icons.email),
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: decorationclass("Password", "*****",
                    Icons.visibility_off_outlined),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Handle sign-up logic here (e.g., send data to server)
                  // After successful sign-up, navigate to the login screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen3()),
                  );
                },
                child: Text('Sign Up'),
              ),
              SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    // Navigate to the login screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen3()),
                    );
                  },
                  child: Text("Already have an account?"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




