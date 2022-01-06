import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RewardBanner extends StatelessWidget {
  const RewardBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.only(top:getProportionateScreenWidth(8),right:getProportionateScreenWidth(8),left: getProportionateScreenWidth(8)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: Color(0xFFffa160),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(text: "Your Balance\n",style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.bold,
            ) ),
            TextSpan(
              text: "500 points\n",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: "500 points expiring on 28 Jul 2021",style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.bold,
            ) ),
          ],
        ),
      ),
    );
  }
}
