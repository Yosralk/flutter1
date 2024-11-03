import 'package:flutter/material.dart';
import 'Screen5.dart';
import 'Screen6.dart';
import 'Screen7.dart';

import 'Function.dart';

class Screen8 extends StatelessWidget {
  final List<BoutiqueItem> cartItems = [
    BoutiqueItem('Dress', 80, "https://example.com/dress.png"),
    BoutiqueItem('Skirt', 45, "https://example.com/skirt.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Color(0xCD3281a8),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Image.network(item.image, height: 50, fit: BoxFit.cover),
              title: Text(item.name),
              subtitle: Text('\$${item.price}'),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle),
                onPressed: () {
                  // Action to remove item from cart
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/screen9'); // Go to checkout
          },
          child: Text('Proceed to Checkout'),
          style: ElevatedButton.styleFrom( backgroundColor:  Color(0xCD32a6a8)),
        ),
      ),
    );
  }
}
