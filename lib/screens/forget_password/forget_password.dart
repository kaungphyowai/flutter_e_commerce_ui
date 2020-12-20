import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/screens/forget_password/components/body.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = '/forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
