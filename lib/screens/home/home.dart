import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/components/custom_bottom_navigation_bar.dart';
import 'package:flutter_e_commerce_ui/screens/enum.dart';

import 'components/body.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavigation(
          routeName: Home.routeName, selectedMenu: MenuState.home),
    );
  }
}
