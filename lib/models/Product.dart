import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> chickenProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/chicken_doppler.png",
      "assets/images/chicken_doppler.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
    ],
    title: "Chicken Doppler",
    price: 25.99,
    description:
        "Double crispy chicken topped with cheese, mayo, chili garlic sauce and lettuce",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/chicken_firehouse.png",
      "assets/images/chicken_firehouse.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
    ],
    title: "Chicken Firehouse",
    price: 30.5,
    description:
        "Crispy chicken topped with lettuce, fiery hot mayo and buffalo sauce",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/chicken_doppler.png",
      "assets/images/chicken_doppler.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
    ],
    title: "Chicken Doppler Large",
    price: 25.99,
    description:
        "Double crispy chicken topped with cheese, mayo, chili garlic sauce and lettuce",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/chicken_firehouse.png",
      "assets/images/chicken_firehouse.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
    ],
    title: "Chicken Firehouse Large",
    price: 30.5,
    description:
        "Crispy chicken topped with lettuce, fiery hot mayo and buffalo sauce",
    rating: 4.1,
    isPopular: true,
  ),
];

List<Product> beefProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/beef_messymeat.png",
      "assets/images/beef_messymeat.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
    ],
    title: "Beef MessyMeat",
    price: 25.99,
    description:
        "This premium burger contains a 7oz, cheese stuffed patty, topped with warm nacho cheese",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/beef_crunchos.png",
      "assets/images/beef_crunchos.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
    ],
    title: "Beef Crunchos",
    price: 30.5,
    description:
        "juicy beef patty / grilled chicken fillet, 2 oz mozzarella cheese patty, cucumber pickles",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/beef_messymeat.png",
      "assets/images/beef_messymeat.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
    ],
    title: "Beef MessyMeat",
    price: 25.99,
    description:
        "This premium burger contains a 7oz, cheese stuffed patty, topped with warm nacho cheese",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/beef_crunchos.png",
      "assets/images/beef_crunchos.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
    ],
    title: "Beef Crunchos",
    price: 30.5,
    description:
        "juicy beef patty / grilled chicken fillet, 2 oz mozzarella cheese patty, cucumber pickles",
    rating: 4.1,
    isPopular: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
