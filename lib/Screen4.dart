import 'package:flutter/material.dart';
import 'Function.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen5.dart';

class Screen4 extends StatelessWidget {
  final List<Product> products = [
    Product('T-Shirt', 20, "https://i.pinimg.com/originals/05/58/51/055851c8bf4d541e60509b950616f903.png"),
    Product('Jeans', 40, "https://w7.pngwing.com/pngs/717/670/png-transparent-jeans-waist-denim-leggings-clothing-jeans-blue-girl-abdomen.png"),
    Product('Jacket', 60, "https://w7.pngwing.com/pngs/154/132/png-transparent-women-s-brown-double-breasted-coat-coat-jacket-canada-goose-parka-ugg-women-s-coats-zipper-holidays-women-accessories-thumbnail.png"),
    Product('Shoes', 50, "https://w7.pngwing.com/pngs/13/200/png-transparent-high-heeled-shoe-female-shoe-shoe-ballet-flat-stock-photography-thumbnail.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        backgroundColor: Color(0xCDa83232),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(product: product),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(product.image, height: 100, fit: BoxFit.cover),
                  Text(product.name),
                  Text('\$${product.price}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String image;
  Product(this.name, this.price, this.image);
}

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(product.image, height: 200, fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              product.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '\$${product.price}',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
