import 'package:flutter/material.dart';
import 'package:flutter1/Function.dart';
import 'Welcom.dart';
import 'package:flutter1/screen2.dart';
import 'package:flutter1/screen3.dart';
import 'ProductScreen.dart';
import 'package:flutter1/boutique.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcom(),
      routes: {
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/products': (context) => ProductScreen(),
        '/boutique': (context) => Boutique(),
      },
    );
  }
}
