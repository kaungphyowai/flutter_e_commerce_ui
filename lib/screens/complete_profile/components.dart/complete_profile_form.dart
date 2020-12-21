import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/components/default_button.dart';
import 'package:flutter_e_commerce_ui/components/form_error.dart';
import 'package:flutter_e_commerce_ui/screens/otp/otp.dart';
import 'package:flutter_e_commerce_ui/screens/sign_in/components/custom_suffix_icon.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  String firstName, lastName, phoneNumber, address;
  List<String> errors = [];
  final _formkey = GlobalKey<FormState>();
  void addError(error) {
    return setState(() {
      errors.add(error);
    });
  }

  void removeError(error) {
    return setState(() {
      errors.remove(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPhoneNumberFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildAddressFormField(),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formkey.currentState.validate()) {
                  //Go to OTP screen
                  Navigator.pushNamed(context, Otp.routeName);
                }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          removeError(kAddressNullError);
          return '';
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kAddressNullError)) {
          addError(kAddressNullError);
          return '';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Enter your Address",
        labelText: 'Address',
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/Location point.svg',
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(phoneNumber)) {
          removeError(phoneNumber);
          return '';
        }
        return null;
      },
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value.isEmpty && !errors.contains(phoneNumber)) {
          addError(phoneNumber);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Enter your phone number",
        labelText: 'Phone Number',
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/Phone.svg',
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNamelNullError)) {
          addError(kNamelNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Enter your last name",
        labelText: 'Last Name',
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/User.svg',
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          removeError(kNamelNullError);
          return '';
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNamelNullError)) {
          addError(kNamelNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Enter your first name",
        labelText: 'First Name',
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/User.svg',
        ),
      ),
    );
  }
}
