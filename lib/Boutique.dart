import 'package:flutter/material.dart';

class Boutique extends StatelessWidget {
  final List<Item> items = [
    Item("Shirt", 12),
    Item("Bag", 7),
    Item("Jeans", 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boutique Items"),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              child: ListTile(
                title: Text(item.name),
                subtitle: Text('\$${item.price}'),
                trailing: Icon(Icons.shopping_cart),
                onTap: () {
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final double price;
  Item(this.name, this.price);
}
