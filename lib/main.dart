import 'package:flutter/material.dart';

main(){
  runApp(Yoser());
}
class Yoser extends StatelessWidget{
  int counter = 0;
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
          backgroundColor:Colors.white,
        ),
        body: Column(
          children: [
            Text("reslut $counter",
              style: TextStyle(
                fontSize: 22,
              ),
            ) ,
            ElevatedButton(onPressed: (){
              counter++;
              print("counter = $counter");
            },
                child: Text("task1"))
          ],
        ),
      ),
    );
  }
}