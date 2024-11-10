import 'package:flutter/material.dart';
import 'Function.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://image.similarpng.com/thumbnail/2021/09/Fashion-elegant-woman-silhouette-logo-template-on-transparent-background-PNG.png',
              height: 200,
            ),
            SizedBox(height: 24),
            Text(
              'Welcome',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF00796B)),
            ),
            Text('Create a new account'),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('LOGIN'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 48),
                backgroundColor: Color(0xFF00796B),
              ),
            ),
            SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('REGISTER'),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 48),
                side: BorderSide(color: Color(0xFF00796B)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
