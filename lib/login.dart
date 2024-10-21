import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Sign in!",
          style: TextStyle(
            fontSize: 30,
            color: Color(0xCD801E1E),
          ),
        ),
        backgroundColor: Color(0xCD801E35),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                TextFormField(
                  decoration: decorationLogin(
                      "Gmail",
                      "joydeo@gmail.com",
                      Icons.check
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: decorationLogin(
                      "Password",
                      "*****",
                      Icons.visibility_off_outlined
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("SIGN IN"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xCD801E3C),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

InputDecoration decorationLogin(String lbl, String hint, IconData icon) {
  return InputDecoration(
    labelText: lbl,
    hintText: hint,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xCD801E47),
        width: 3,
      ),
    ),
    filled: true,
    suffixIcon: Icon(icon),
  );
}
