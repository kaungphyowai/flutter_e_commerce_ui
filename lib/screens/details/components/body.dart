import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/models/Product.dart';
import 'package:flutter_e_commerce_ui/screens/details/components/product_description.dart';
import 'package:flutter_e_commerce_ui/screens/details/components/product_image.dart';
import 'package:flutter_e_commerce_ui/screens/details/components/top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImage(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: ProductDescription(
            product: product,
            pressOnSeeMore: () {},
          ),
        ),
      ],
    );
  }
}
