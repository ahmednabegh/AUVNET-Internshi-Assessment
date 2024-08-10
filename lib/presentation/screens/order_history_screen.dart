import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Placeholder for order history data
    final orders = [
      {'id': '1234', 'total': 79.98, 'date': '2023-08-01'},
      {'id': '1235', 'total': 29.99, 'date': '2023-08-05'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            title: Text('Order #${order['id']}'),
            subtitle:
                Text('Total: \$${order['total']} - Date: ${order['date']}'),
          );
        },
      ),
    );
  }
}
