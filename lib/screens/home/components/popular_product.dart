import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/components/product_card.dart';
import 'package:flutter_e_commerce_ui/models/Product.dart';
import 'package:flutter_e_commerce_ui/screens/details/details.dart';
import 'package:flutter_e_commerce_ui/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  proudct: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    Details.routeName,
                    arguments: ProductDetailsArgument(
                      product: demoProducts[index],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
