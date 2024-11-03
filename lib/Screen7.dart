import 'package:flutter/material.dart';
import 'Screen6.dart';

class Screen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xCD9932a8),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage("https://example.com/user.png"),
            ),
            SizedBox(height: 20),
            Text(
              'Username',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'email@example.com',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Action for editing profile
              },
              child: Text('Edit Profile'),
              style: ElevatedButton.styleFrom(backgroundColor:  Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
