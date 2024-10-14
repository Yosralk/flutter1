import 'dart:async';

import 'package:flutter/foundation.dart';
import'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(Yoser());
}
class Yoser extends StatefulWidget {
  const Yoser({super.key});

  @override
  State<Yoser> createState() => _YoserState();
}

class _YoserState extends State<Yoser> {
  String? inputuser;
  TextEditingController controller= TextEditingController(text: inputuser)
  @override
  super.@override
  void initState() {
    // TODO: implement initState
    super.initState();
    TextEditingController(text:inputuser );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gmail",
            style: TextStyle(
              fontSize: 78,
              backgroundColor: Colors.green.shade700,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 87,),
            TextField(
              keyboardType: TextInputType.text,
              onChanged: (v){
                setState(() {
                  inputuser=v;
                });
              },
            ),
            Text(inputuser!),
            SizedBox(height: 90,),
            Checkbox(value: isCanvasKit, onChanged: (v){
              setState(() {
                isCanvasKit=v!;
              });
            }
            )

          ],
        ),
      ),
    );
  }
}
