import 'package:flutter/material.dart';
//task1:
void main(){
  runApp(text());
}
class text extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("Fecbook" ,
          style: TextStyle(
            color: Colors.white ,
            fontWeight:FontWeight.w900 ,
          ),
          ),
        ),
        body: Center(
          child: Text("Welcom on fecbook" ,
            style: TextStyle(
              fontSize: 29.7 ,
              backgroundColor: Colors.indigo.shade600 ,
              decoration: TextDecoration.lineThrough ,
              fontStyle: FontStyle.italic ,

            ),

          )

        )

        ),

    );
  }
}
