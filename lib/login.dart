import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 49,
            fontWeight: FontWeight.w100,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding:const EdgeInsets.all(20),
          child: Form(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fprofile-image&psig=AOvVaw2YIUAU0imcHvXw8Lybs5b4&ust=1729364535469000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMDnvojPmIkDFQAAAAAdAAAAABAE",
                  width: 100,),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: decoration("username","username or email"),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: Decoration("password", "enter your password"),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: Decoration("password" , "enter password again"),
                  )
                ],
              )
          ),
        ),
      ),
    ),
  }
}
