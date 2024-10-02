import 'package:flutter/material.dart';

class Popmnue extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Zaina();
  }
}
class Zaina extends State<Popmnue>{
  List <String> color =["red" , "pink" ,"green", "balck" ,"white"];
  String? Selectonitem = "pink";
  Color a= Colors.red;
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcom Back"),
          backgroundColor: a,


        actions: [
          PopupMenuButton(itemBuilder: (context){
            return color.map((item)
            {
              return PopupMenuItem(child: Text(item),
              value: item,);
            }).toList();
          })


   ],


        ),
      ),


    );

  }

}