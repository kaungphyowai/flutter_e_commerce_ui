import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/components/rounded_icon_btn.dart';
import 'package:flutter_e_commerce_ui/models/Product.dart';
import 'package:flutter_e_commerce_ui/size_config.dart';

class Details extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: RoundedIconBtn(
            icon: Icons.arrow_back,
            press: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends PreferredSize {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => super.preferredSize;
}

class ProductDetailsArgument {
  Product product;
  ProductDetailsArgument({@required this.product});
}
