import 'package:flutter/material.dart';

void main(){
  runApp(PopupMenuItem(child: AppBar()));
}
class Yoser extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Zaina();
  }
}
class Zaina extends State<Yoser>{
  List <String> color =["red" , "pink" ,"green", "balck" ,"white"];
  String? Selectonitem = "pink";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcom Back"),
        ),
        body: Column(
          children: [

            DropdownButton(items: color.map((item){
              return DropdownMenuItem(child: Text(item),
                value: item,);
            }).toList(),
                onChanged: (nValue){
                  Selectonitem= nValue;

                })
          ],

        ),
      ),


    );

  }

}