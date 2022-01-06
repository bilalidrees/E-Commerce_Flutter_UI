import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../size_config.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
              top: getProportionateScreenWidth(8),
              right: getProportionateScreenWidth(8),
              left: getProportionateScreenWidth(8)),
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenWidth(15),
          ),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8	),
            borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black12)
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "${Random().nextInt(99)} PKR\n",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(20),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              "${Random().nextInt(5000)} more points\nneed to go \n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(13),
                          )),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LinearPercentIndicator(
                        width: getProportionateScreenWidth(150),
                        lineHeight: 4.0,
                        percent: Random().nextDouble(),
                        progressColor: Colors.orange,
                      ),
                      Container(
                        width: getProportionateScreenWidth(120),
                        decoration: BoxDecoration(
                            color: Color(0xFFffffff),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.security,
                              size: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Redeem",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(12),
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
