import 'package:flutter/material.dart';
import 'Function.dart';
import 'Welcom.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen4.dart';
import 'Screen5.dart';
import 'Screen6.dart';
import 'Screen7.dart';
import 'Screen8.dart';
import 'Screen9.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
      routes: {
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
        '/screen5': (context) => Screen5(),
        '/screen6':(context) =>Screen6(),
        '/screen7':(context)=>Screen7(),
        '/screen8':(context)=>Screen8(),
        '/screen9':(context)=>Screen9(),
      },
    );
  }
}
