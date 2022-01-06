import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     Key key,
//     this.width = 140,
//     this.aspectRetio = 1.02,
//     @required this.product,
//   }) : super(key: key);
//
//   final double width, aspectRetio;
//   final Product product;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
//       child: SizedBox(
//         width: getProportionateScreenWidth(width),
//         child: GestureDetector(
//           onTap: () => Navigator.pushNamed(
//             context,
//             DetailsScreen.routeName,
//             arguments: ProductDetailsArguments(product: product),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AspectRatio(
//                 aspectRatio: 1.02,
//                 child: Container(
//                   padding: EdgeInsets.all(getProportionateScreenWidth(20)),
//                   decoration: BoxDecoration(
//                     color: kSecondaryColor.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Hero(
//                     tag: product.id.toString(),
//                     child: Image.asset(product.images[0]),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 product.title,
//                 style: TextStyle(color: Colors.black),
//                 maxLines: 2,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "\$${product.price}",
//                     style: TextStyle(
//                       fontSize: getProportionateScreenWidth(18),
//                       fontWeight: FontWeight.w600,
//                       color: kPrimaryColor,
//                     ),
//                   ),
//                   InkWell(
//                     borderRadius: BorderRadius.circular(50),
//                     onTap: () {},
//                     child: Container(
//                       padding: EdgeInsets.all(getProportionateScreenWidth(8)),
//                       height: getProportionateScreenWidth(28),
//                       width: getProportionateScreenWidth(28),
//                       decoration: BoxDecoration(
//                         color: product.isFavourite
//                             ? kPrimaryColor.withOpacity(0.15)
//                             : kSecondaryColor.withOpacity(0.1),
//                         shape: BoxShape.circle,
//                       ),
//                       child: SvgPicture.asset(
//                         "assets/icons/Heart Icon_2.svg",
//                         color: product.isFavourite
//                             ? Color(0xFFFF4848)
//                             : Color(0xFFDBDEE4),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRetio = 1.02,

    @required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;


  void onTap(BuildContext context) {
    Navigator.pushNamed(
      context,
      DetailsScreen.routeName,
      arguments: ProductDetailsArguments(product: product),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        margin: const EdgeInsets.all(7),
        height: getProportionateScreenHeight(450),
        width: getProportionateScreenWidth(250),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0XFFE2E2E2), width: 1.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(
                      tag: product.id.toString(),
                      child: Image.asset(
                        product.images[0],
                        height: getProportionateScreenWidth(45),
                      ),
                    ),
                    Container(
                      height: getProportionateScreenWidth(20),
                      width: getProportionateScreenWidth(40),
                      margin: const EdgeInsets.only(bottom: 40, right: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFECDF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            width: getProportionateScreenWidth(15),
                            height: getProportionateScreenWidth(15),
                            image: AssetImage("assets/images/coin.jpg"),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 2, right: 1),
                            child: Text(
                              '${Random().nextInt(99)}',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF181725),
                              ).copyWith(fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(5)),
              Text(product.title,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF181725),
                  )),
              // Text(product.description, style: TextStyle(
              //   color:Color(0XFF7C7C7C) ,
              //   fontSize: 13,
              // )),
              SizedBox(height: getProportionateScreenWidth(5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF181725),
                    ).copyWith(fontWeight: FontWeight.w700),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.add,
                      size: getProportionateScreenWidth(13),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
