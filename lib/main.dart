import 'package:flutter/material.dart';

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
          title: Text("view1"),
          backgroundColor: Colors.purpleAccent,
        ),
      body:ListView(
        children: [
          ListTile(
            title: Text("book"),
            leading: Icon(Icons.directions_walk),
          ),
          ListTile(
            title: Text("book2"),
            leading: Icon(Icons.directions_walk),
          ),
          ListTile(
            title: Text("book3"),
            leading: Icon(Icons.directions_walk),
          ),
          ListTile(
            title: Text("book4"),
            leading: Icon(Icons.directions_walk),
          ),
          ListTile(
            title: Text("book5"),
            leading: Icon(Icons.directions_walk),
          ),
          ListTile(
            title: Text("book6"),
            leading: Icon(Icons.directions_walk),
          ),
          ListTile(
            title: Text("book7"),
            leading: Icon(Icons.directions_walk),
          ),
          ListTile(
            title: Text("book8"),
            leading: Icon(Icons.directions_walk),
          ),
          ListTile(
            title: Text("book9"),
            leading: Icon(Icons.directions_walk),
          ),
          ListTile(
            title: Text("book10"),
            leading: Icon(Icons.directions_walk),
          ),
        ],
      )
      ),
    );
  }
}
