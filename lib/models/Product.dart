import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = true,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/products/8787.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Indigo Nation Men Price catch Green White Shirts",
    price: 799.00,
    description: "Indigo Nation Men Price catch Green White Shirts",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/products/8889.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "John Miller Men Black Shirt",
    price: 999.00,
    description: "John Miller Men Black Shirt",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/products/8834.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Scullers Men Scul Brown Trousers",
    price: 949.00,
    description: "Scullers Men Scul Brown Trousers",
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/products/8842.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Scullers Men Scul Beige Trousers",
    price: 929.00,
    description: "Scullers Men Scul Beige Trousers",
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/products/2367.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Red Tape Men's Brown Semi Formal Shoe",
    price: 1049.00,
    description: "Red Tape Men's Brown Semi Formal Shoe",
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/products/2370.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Red Tape Men's Semi Black Formal Shoe",
    price: 999.00,
    description: "Red Tape Men's Semi Black Formal Shoe",
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
