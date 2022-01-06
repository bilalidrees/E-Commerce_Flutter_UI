import 'package:flutter/material.dart';
import 'package:shop_app/screens/reward/components/reward_banner.dart';
import 'package:shop_app/screens/reward/components/tab.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            RewardBanner(),
            TabBanner(),
          ],
        ),
      ),
    );
  }
}
