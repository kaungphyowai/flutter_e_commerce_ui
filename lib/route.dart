import 'package:flutter/widgets.dart';
import 'package:flutter_e_commerce_ui/screens/complete_profile/complete_profile.dart';
import 'package:flutter_e_commerce_ui/screens/forget_password/forget_password.dart';
import 'package:flutter_e_commerce_ui/screens/login_success/login_success.dart';
import 'package:flutter_e_commerce_ui/screens/otp/otp.dart';
import 'package:flutter_e_commerce_ui/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_e_commerce_ui/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_e_commerce_ui/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  SignUp.routeName: (context) => SignUp(),
  CompleteProfile.routeName: (context) => CompleteProfile(),
  Otp.routeName: (context) => Otp(),
};
