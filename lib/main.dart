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
            TextField(
              obscureText: true,
              inputFormatters: [
              ],
              keyboardType: TextInputType.numberWithOptions(),
              decoration:InputDecoration(
                icon: Icon(Icons.star_half_rounded , color: Colors.deepOrangeAccent,),
                prefixIcon: Icon(Icons.car_crash_rounded),
                suffixIcon: Icon(Icons.wallet),
                prefixText: "Hello",
                suffixText: "@gmail.come",
                hintText: "Ex:gmail.come",
                helperMaxLines: 4,
                errorText: "Error",
                label: Text("username"),
                helperText: "Help",
                counterText: "1-45",
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.purple,
                focusedBorder: OutlineInputBorder(),
                focusColor: Colors.yellow,
              ) ,
            )
          ],
        ),
      ),
    );
  }
}
