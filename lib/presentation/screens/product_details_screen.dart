import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;

    final String name = product['name'] as String? ?? 'Unnamed Product';
    final double price = product['price'] as double? ?? 0.0;
    final String imageUrl = product['imageUrl'] as String? ?? '';
    final String description =
        product['description'] as String? ?? 'No description available.';

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                imageUrl.isNotEmpty
                    ? imageUrl
                    : 'https://via.placeholder.com/150',
                height: 200,
                errorBuilder: (context, error, stackTrace) {
                  return Image.network(
                    'https://via.placeholder.com/150',
                    height: 200,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, color: Colors.grey[700]),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle adding to cart
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
