# auvnet_internship_ecommerce

# AUVNET Internship Assessment

## Project Overview

This project is a simple e-commerce application developed using Flutter. It adheres to Clean Architecture principles and uses the BLoC pattern for state management. The application allows users to register, login, browse products, add them to a shopping cart, and view order history. Local storage is implemented using Hive for caching and offline access.

## Features

- **User Registration:** New users can register by providing an email and password. The registration data is stored locally using Hive.
- **User Authentication:** Users can log in with their registered email and password. The login process validates the credentials against the stored data.
- **Product Browsing:** List view for products with images, names, prices, and descriptions. Clicking a product navigates to a detailed view.
- **Shopping Cart:** Add products to a cart, view them with images and quantities, and proceed to checkout.
- **Order History:** View past orders.
- **Checkout Process:** Enter shipping details and place an order.
- **Local Storage:** Uses Hive to store user data and preferences locally.

## Project Structure

The project follows the Clean Architecture principles:

lib/
├── data/
│ ├── models/
│ ├── repositories/
│ └── data_sources/
├── domain/
│ ├── entities/
│ ├── repositories/
│ └── usecases/
├── presentation/
│ ├── blocs/
│ ├── screens/
│ ├── widgets/
│ └── routes/
├── core/
│ ├── utils/
│ └── error/
└── main.dart


## Setup and Installation

1. Clone the repository.
2. Run `flutter pub get` to install dependencies.
3. Run the app using `flutter run`.

## Screens

### Login Screen
- Validates user credentials against locally stored data.
- Allows navigation to the registration screen.

### Register Screen
- Allows new users to register with an email and password.
- Stores user data securely using Hive.
- Includes form validation for email format and password length.

### Home Screen
- Displays a list of products with images, names, prices, and descriptions.
- Users can tap on a product to view more details.

### Product Detail Screen
- Provides detailed information about a selected product, including an image, name, price, and description.
- Option to add the product to the shopping cart.

### Shopping Cart Screen
- Displays the products added to the cart with images, names, quantities, and total price.
- Includes a "Checkout" button to proceed with the order.

### Checkout Screen
- Users can enter their shipping details and complete the order.

### Order History Screen
- Displays a list of past orders.

## Conclusion

This project demonstrates the implementation of a simple e-commerce app with user registration, login, product browsing, and shopping cart features. The use of Clean Architecture and BLoC ensures that the app is scalable and maintainable, while Hive provides a robust solution for local data storage.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
