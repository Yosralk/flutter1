import 'package:flutter/material.dart';
import 'Function.dart';
import 'Welcom.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen4.dart';
import 'Screen5.dart';

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
        '/products': (context) => Screen4(),
        '/boutique': (context) => Screen5(),
      },
    );
  }
}
