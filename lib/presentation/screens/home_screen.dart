import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: ProductListView(),
    );
  }
}

class ProductListView extends StatelessWidget {
  final List<Map<String, Object>> products = [
    {
      'name': 'Product 1',
      'price': 29.99,
      'imageUrl': 'https://via.placeholder.com/150',
      'description': 'This is a great product 1.'
    },
    {
      'name': 'Product 2',
      'price': 49.99,
      'imageUrl': '', // Example of an empty URL
      'description': 'This is a great product 2.'
    },
    {
      'name': 'Product 3',
      'price': 19.99,
      'imageUrl': 'https://via.placeholder.com/150',
      'description': 'This is a great product 3.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        final String name = product['name'] as String? ?? 'Unnamed Product';
        final double price = product['price'] as double? ?? 0.0;
        final String imageUrl = product['imageUrl'] as String? ?? '';
        final String description = product['description'] as String? ?? '';

        return Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.network(
              imageUrl.isNotEmpty
                  ? imageUrl
                  : 'https://via.placeholder.com/150',
              width: 50,
              height: 50,
              errorBuilder: (context, error, stackTrace) {
                return Image.network(
                  'https://via.placeholder.com/150',
                  width: 50,
                  height: 50,
                );
              },
            ),
            title: Text(name),
            subtitle: Text(description),
            trailing: Text('\$${price.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/product',
                arguments: product,
              );
            },
          ),
        );
      },
    );
  }
}
