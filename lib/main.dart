import 'package:flutter/material.dart';
main(){
  runApp(TextWidget());
}
class TextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade600,
          title: Text("TextWidget",
              style: TextStyle(
              fontSize: 50,
                color: Colors.white,
          ),
            
          ),
      ),
        body: Center(
          child: RichText(text: TextSpan(
            text: "hello" ,
            style: TextStyle(
              color: Colors.pink.shade300,
            )
          )
          ),
        ),
    ),
    );
  }
}