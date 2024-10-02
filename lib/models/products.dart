import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
  });
}

final List<Product> products = [
  Product(
    title: 'Wireless Headphone',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    image: 'assets/images/wireless.png',
    price: 210,
    colors: [Colors.black, Colors.blue, Colors.orange],
    category: 'Woman Fashion',
    rate: 4.8,
  ),
  Product(
    title: 'Woman Sweater',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    image: 'assets/images/sweet.png',
    price: 120,
    colors: [Colors.brown.shade200, Colors.red, Colors.pink],
    category: 'Woman Fashion',
    rate: 4.5,
  ),
  Product(
    title: 'Smart Watch',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    image: 'assets/images/watch.png',
    price: 55,
    colors: [
      Colors.black,
    ],
    category: 'Watch',
    rate: 4.9,
  ),
];
