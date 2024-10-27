import 'package:flutter/material.dart';
import 'package:flutter1/Screen2.dart';
import 'package:flutter1/Screen3.dart';
import 'Screen1.dart';

void main() {
  runApp(MyyApp());
}

class MyyApp extends StatefulWidget {
  const MyyApp({super.key});

  @override
  State<MyyApp> createState() => _MyyAppState();
}

class _MyyAppState extends State<MyyApp> {
  @override
  Widget build(BuildContextcontext) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Screen1(),
  routes: {
  '/screen2':(context) => Screen2(),
    '/Screen3':(context)=>Screen3(),
  },

  );
  }
}