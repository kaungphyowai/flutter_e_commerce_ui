import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/components/social_card.dart';
import '../../../size_config.dart';
import 'package:flutter_e_commerce_ui/constants.dart';
import 'package:flutter_e_commerce_ui/screens/sign_up/components/sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text(
              'Register Account',
              style: headingStyle,
            ),
            Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: 'assets/icons/google-icon.svg',
                  press: () {},
                ),
                SocialCard(
                  icon: 'assets/icons/facebook-2.svg',
                  press: () {},
                ),
                SocialCard(
                  icon: 'assets/icons/twitter.svg',
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              'By continuing your confirm that you aggress \nwith our Trem and Condition',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
