import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/routes.dart';
import 'package:flutter_ecommerce/screens/splash/splashScreen.dart';
import 'package:flutter_ecommerce/theme.dart';

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
      theme:theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}


