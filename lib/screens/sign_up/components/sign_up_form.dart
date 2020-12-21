import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/components/default_button.dart';
import 'package:flutter_e_commerce_ui/components/form_error.dart';
import 'package:flutter_e_commerce_ui/screens/sign_in/components/custom_suffix_icon.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String email, password, confirmedPassword;
  List<String> errors = [];
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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

    return Form(
      key: _formkey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: Column(
          children: [
            buildEmailFormField(removeError, addError),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPassFormField(removeError, addError),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildConfirmedPasswordFormField(removeError, addError),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formkey.currentState.validate()) {
                  //Go to complete profile
                }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildConfirmedPasswordFormField(
      void removeError(dynamic error), void addError(dynamic error)) {
    return TextFormField(
      onSaved: (newValue) => confirmedPassword = newValue,
      onChanged: (value) {
        confirmedPassword = value;
        if (password == confirmedPassword) {
          removeError(kMatchPassError);
        }
        return null;
      },
      obscureText: true,
      validator: (value) {
        if (value.isEmpty) {
          return "";
        } else if (password != confirmedPassword &&
            !errors.contains(kMatchPassError)) {
          addError(kMatchPassError);
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Confirm Password",
        labelText: 'Re-enter your password',
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildPassFormField(
      void removeError(dynamic error), void addError(dynamic error)) {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          removeError(kPassNullError);
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          removeError(kShortPassError);
        }
        password = value;
        return null;
      },
      obscureText: true,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          addError(kPassNullError);
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          addError(kShortPassError);
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Enter your password",
        labelText: 'Password',
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField(
      void removeError(dynamic error), void addError(dynamic error)) {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          removeError(kEmailNullError);
          return '';
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(kInvalidEmailError);
          return '';
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          addError(kEmailNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          addError(kInvalidEmailError);
          return '';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Enter your email",
        labelText: 'Email',
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}
