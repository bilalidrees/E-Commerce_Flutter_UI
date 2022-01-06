import 'package:flutter/material.dart';

import 'Product.dart';
import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({@required this.product, @required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: chickenProducts[0], numOfItem: 2),
  Cart(product: chickenProducts[1], numOfItem: 1),
];

