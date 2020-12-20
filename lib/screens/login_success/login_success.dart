import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = '/loginsuccess';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Success"),
        leading: SizedBox(),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
