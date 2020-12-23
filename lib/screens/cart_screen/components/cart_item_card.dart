import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/models/Cart.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CardItemCard extends StatefulWidget {
  const CardItemCard({
    Key key,
    this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  _CardItemCardState createState() => _CardItemCardState();
}

class _CardItemCardState extends State<CardItemCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(widget.cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.cart.product.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                  text: "\$${widget.cart.product.price}",
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                  children: [
                    TextSpan(
                        text: " x${widget.cart.numOfItem}",
                        style: TextStyle(
                          color: kTextColor,
                        )),
                  ]),
            ),
          ],
        )
      ],
    );
  }
}
