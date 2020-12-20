import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(
                  'TOKOTO',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(36),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
