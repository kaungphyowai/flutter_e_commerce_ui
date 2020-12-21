import 'package:flutter/material.dart';
import 'components/body.dart';

class SignUp extends StatelessWidget {
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
