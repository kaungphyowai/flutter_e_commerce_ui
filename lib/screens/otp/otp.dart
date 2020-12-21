import 'package:flutter/material.dart';
import 'components/body.dart';

class Otp extends StatelessWidget {
  static String routeName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP verification"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
