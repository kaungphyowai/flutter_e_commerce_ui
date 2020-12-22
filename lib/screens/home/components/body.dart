import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/size_config.dart';

import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            DiscountBanner(),
          ],
        ),
      ),
    );
  }
}
