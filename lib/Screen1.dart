import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcom",
          style: TextStyle(
            fontSize: 20,
            color: Colors.deepOrange,
          ),
        ),
        backgroundColor:Colors.white ,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have successfully logged in",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text("Back to Login"),
            ),
          ],
        ),
      ),
    );
  }
}

InputDecoration decorationscreen(String lbl,String hint,IconData icon){
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

