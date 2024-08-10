import 'package:auvnet_internship_ecommerce/presentation/screens/cart_screen.dart';
import 'package:auvnet_internship_ecommerce/presentation/screens/checkout_screen.dart';
import 'package:auvnet_internship_ecommerce/presentation/screens/home_screen.dart';
import 'package:auvnet_internship_ecommerce/presentation/screens/login.dart';
import 'package:auvnet_internship_ecommerce/presentation/screens/order_history_screen.dart';
import 'package:auvnet_internship_ecommerce/presentation/screens/product_details_screen.dart';
import 'package:auvnet_internship_ecommerce/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
        '/product': (context) => ProductDetailScreen(),
        '/cart': (context) => CartScreen(),
        '/checkout': (context) => CheckoutScreen(), // CheckoutScreen route
        '/order-history': (context) => OrderHistoryScreen(),
      },
    );
  }
}
