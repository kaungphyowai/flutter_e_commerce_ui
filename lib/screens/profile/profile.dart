import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/components/custom_bottom_navigation_bar.dart';
import 'package:flutter_e_commerce_ui/screens/enum.dart';
import 'package:flutter_e_commerce_ui/screens/home/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/body.dart';

class Profile extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavigation(
        routeName: routeName,
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
