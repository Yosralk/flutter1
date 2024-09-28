import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyRichTextApp());
}

class MyRichTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rich Text Widget"),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: "Don't have an account? ",
              style: TextStyle(
                color: Colors.blue.shade900,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Sign up",
                  style: TextStyle(
                    color: Colors.orange.shade100,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("click");
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
