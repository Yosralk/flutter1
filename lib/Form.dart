
import 'package:flutter/material.dart';

class FormClass2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FORMS"),
        centerTitle: true,
      ),
      body: Form(
          child:Column(
           children: [SizedBox(height: 50,),
             TextFormField(
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.blue.shade600,
                     width: 5
                   )
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.red,
                     width: 10
                   )
                 ),
                 label:Text("Email"),
                 labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                 filled: true,
                 fillColor: Colors.pink.shade900,
                 hintText: "username@gmail.com",
                 hintStyle: TextStyle(color: Colors.grey),
                 icon: Icon(Icons.email),
                 prefixIcon: Icon(Icons.email_outlined),
                 suffixIcon: Icon(Icons.email_rounded)
               ),
             ),
             SizedBox(height: 20,),
             TextFormField(
               obscureText: true,
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.yellow,
                     width: 7
                   )
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.blueGrey,
                     width: 9
                   )
                 ),
                 label: Text("password"),
                 labelStyle: TextStyle(color: Colors.blueGrey,fontSize: 20),
                 filled: true,
                 hintText: "*************",
                 hintStyle: TextStyle(color: Colors.brown)
               ),
             )
           ],
          ),
      ),
    );
  }
}
