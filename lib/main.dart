import 'package:flutter/material.dart';
import 'package:flutter1/login.dart';

main(){
  runApp(TestClass());
}
class TestClass extends StatefulWidget {
  const TestClass({super.key});

  @override
  State<TestClass> createState() => _TestClassState();
}

class _TestClassState extends State<TestClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login2(

      )
    );
  }
}
