import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  int type;

  PopularProducts({this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        GridView.count(
          controller: ScrollController(),
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 20.0,
          shrinkWrap: true,
          children: [
            ...List.generate(
              type == 0 ? chickenProducts.length : beefProducts.length,
              (index) {
                if (type == 0)
                  return ProductCard(
                      product: chickenProducts[index]);
                else
                  return ProductCard(product: beefProducts[index]);
              },
            ),
            // SizedBox(width: getProportionateScreenWidth(30)),
          ],
        )
      ],
    );
  }
}
