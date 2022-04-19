import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Blue Casual",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/vans3.png",
      color: Colors.blueAccent
  ),
  Product(
      id: 2,
      title: "Blue Vans",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/vans.png",
      color: Colors.blue),
  Product(
      id: 3,
      title: "Red Sneakers",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/men_shoes.png",
      color: Colors.redAccent),
  Product(
      id: 4,
      title: "Brown Casual",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/men_shoes2.png",
      color: Colors.brown),
  Product(
      id: 5,
      title: "Red Casual",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/men_shoes3.png",
      color: Colors.redAccent),
  Product(
    id: 6,
    title: "Multi Color Vans",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/vans2.png",
    color: Colors.green,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the "
    "printing and typesetting industry. Lorem Ipsum "
    "has been the industry's standard dummy text ever since. "
    "When an unknown printer took a galley.";