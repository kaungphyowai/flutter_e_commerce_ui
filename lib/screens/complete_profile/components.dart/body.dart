import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          Text("Complete Profile", style: headingStyle),
          Text(
            "Complete your details or continue  \nwith social media",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          CompleteProfileForm(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Text(
            "By continuing your confirm that you agree \nwith our Term and Condition",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
