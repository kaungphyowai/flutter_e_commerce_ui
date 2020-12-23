import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/screens/enum.dart';
import 'package:flutter_e_commerce_ui/screens/home/home.dart';
import 'package:flutter_e_commerce_ui/screens/profile/profile.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key key,
    @required this.routeName,
    @required this.selectedMenu,
  }) : super(key: key);

  final String routeName;
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(context, Home.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(context, Profile.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
