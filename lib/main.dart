import 'package:flutter/material.dart';
main(){
  runApp(Yoser());
}
class Yoser extends StatefulWidget {
  const Yoser({super.key});

  @override
  State<Yoser> createState() => _YoserState();
}

class _YoserState extends State<Yoser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x4287f5),
      appBar: AppBar(title: Text("Home page",
        style: TextStyle(fontWeight: FontWeight.w200,
          color: Colors.grey,
          fontSize: 90,
        ),

      ),
        backgroundColor: Color(0x428df5),
      ),
      body: Container(
        color: Color(0x4263f5),
        margin: EdgeInsets.symmetric(horizontal: 345),
        height: 987,
        width: 567,
        decoration: BoxDecoration(
          color: Color(0x4287f5),
          border: Border(bottom: BorderSide(color: Colors.white12,width: 123,style: BorderStyle.solid))
            
        ),
      ),
    );
  }
}
