import 'package:flutter/material.dart';
import 'Welcom.dart';
import 'Function.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen4.dart';
import 'Screen5.dart';
import 'Screen6.dart';
import 'Screen7.dart';
import 'Screen8.dart';

class Screen9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Summary',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Dress - \$80'),
            Text('Skirt - \$45'),
            Divider(),
            Text(
              'Total: \$125',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Confirm order action
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Order Confirmed!')),
                );
              },
              child: Text('Place Order'),
              style: ElevatedButton.styleFrom(backgroundColor:  Color(0xCD3269a8)),
            ),
          ],
        ),
      ),
    );
  }
}
