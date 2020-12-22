import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/screens/home/components/section_title.dart';
import 'package:flutter_e_commerce_ui/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SectionTitle(
              text: "Special Offer",
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
