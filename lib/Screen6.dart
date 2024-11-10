import 'package:flutter/material.dart';
import 'Welcom.dart';
import 'Function.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen4.dart';
import 'Screen5.dart';

class Screen6 extends StatelessWidget {
  final List<BoutiqueItem> accessoryItems = [
    BoutiqueItem('Necklace', 50, "https://example.com/necklace.png"),
    BoutiqueItem('Bracelet', 20, "https://example.com/bracelet.png"),
    BoutiqueItem('Earrings', 15, "https://example.com/earrings.png"),
    BoutiqueItem('Ring', 35, "https://example.com/ring.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accessories'),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: accessoryItems.length,
        itemBuilder: (context, index) {
          final item = accessoryItems[index];
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
