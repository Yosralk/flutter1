import 'package:flutter/material.dart';
import 'package:flutter1/Screen2.dart';

void main() {
  runApp(Screen1());
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContextcontext) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Screen1(),
  routes: {
  '/screen2':(context) => Screen2(),
  },
  );
  }
}