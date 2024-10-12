import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xC0636590),
      appBar: AppBar(
        title: Text("home page",
          style: TextStyle(fontSize: 89,
            color: Colors.white,
          ),
        ),
      ),
      body:Container(
        color: Color(0xCDc4b4d1),
        width: 987,
        height: 230,
        
      )
    );
  }
}
