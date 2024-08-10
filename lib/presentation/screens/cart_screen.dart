import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartItems = [
      {
        'name': 'Product 1',
        'price': 29.99,
        'quantity': 1,
        'imageUrl': 'https://via.placeholder.com/150',
      },
      {
        'name': 'Product 2',
        'price': 49.99,
        'quantity': 2,
        'imageUrl': '', // Example of an empty URL
      },
    ];

    double totalPrice = cartItems.fold(0.0, (sum, item) {
      final double price = item['price'] as double? ?? 0.0;
      final int quantity = item['quantity'] as int? ?? 0;
      return sum + (price * quantity);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  final String name =
                      item['name'] as String? ?? 'Unnamed Product';
                  final double price = item['price'] as double? ?? 0.0;
                  final int quantity = item['quantity'] as int? ?? 0;
                  final String imageUrl = item['imageUrl'] as String? ?? '';

                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 10),
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
                      subtitle: Text(
                        '$quantity x \$${price.toStringAsFixed(2)} = \$${(price * quantity).toStringAsFixed(2)}',
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              'Total: \$${totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
