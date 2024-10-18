import 'package:flutter/material.dart';
import'Form.dart';
import'login.dart';

main(){
  runApp(FormClass());
}
class FormClass extends StatefulWidget {
  const FormClass({super.key});

  @override
  State<FormClass> createState() => _FormClassState();
}

class _FormClassState extends State<FormClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormClass(),
    );
  }
}
