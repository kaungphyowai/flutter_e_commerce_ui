import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/components/default_button.dart';
import 'package:flutter_e_commerce_ui/components/form_error.dart';
import 'package:flutter_e_commerce_ui/screens/forget_password/forget_password.dart';
import 'package:flutter_e_commerce_ui/screens/login_success/login_success.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'custom_suffix_icon.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
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

  final _formkey = GlobalKey<FormState>();
  String email, password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  activeColor: kPrimaryColor,
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text('Remember me'),
              Spacer(),
              GestureDetector(
                onTap: () {
                  return Navigator.pushNamed(context, ForgotPassword.routeName);
                },
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formkey.currentState.validate()) {
                _formkey.currentState.save();
                Navigator.pushNamed(context, LoginSuccess.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
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

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          removeError(kPassNullError);
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          removeError(kShortPassError);
        }
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
}
