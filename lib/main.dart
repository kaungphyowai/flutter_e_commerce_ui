import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_ui/route.dart';
import 'package:flutter_e_commerce_ui/screens/splash/splash_screen.dart';
import 'package:flutter_e_commerce_ui/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
