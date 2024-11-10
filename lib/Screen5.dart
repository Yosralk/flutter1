import 'package:flutter/material.dart';
import 'Welcom.dart';
import 'Function.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen4.dart';

class Screen5 extends StatelessWidget {
  final List<BoutiqueItem> boutiqueItems = [
    BoutiqueItem('Dress', 80, "https://example.com/dress.png"),
    BoutiqueItem('Blouse', 30, "https://example.com/blouse.png"),
    BoutiqueItem('Skirt', 45, "https://example.com/skirt.png"),
    BoutiqueItem('Hat', 25, "https://example.com/hat.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boutique'),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: boutiqueItems.length,
        itemBuilder: (context, index) {
          final item = boutiqueItems[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Image.network(item.image, height: 50, fit: BoxFit.cover),
              title: Text(item.name),
              subtitle: Text('\$${item.price}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoutiqueDetailsScreen(item: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class BoutiqueItem {
  final String name;
  final double price;
  final String image;
  BoutiqueItem(this.name, this.price, this.image);
}

class BoutiqueDetailsScreen extends StatelessWidget {
  final BoutiqueItem item;

  BoutiqueDetailsScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(item.image, height: 200, fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              item.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '\$${item.price}',
              style: TextStyle(fontSize: 20, color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
