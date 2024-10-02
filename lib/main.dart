import 'package:flutter/material.dart';

main(){
  runApp(Yoser());
}
class Yoser extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("YOSR IS COMING!" ,
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue.shade200,
            fontWeight: FontWeight.bold
          ) ,
        ),
          backgroundColor:Colors.red.shade800 ,
        ),
      ),
    );
  }
}