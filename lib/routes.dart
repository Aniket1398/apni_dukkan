
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/cart/cartScreen.dart';
import 'package:flutter_ecommerce/screens/complete_profile/completeProfile_screen.dart';
import 'package:flutter_ecommerce/screens/details/detailScreen.dart';
import 'package:flutter_ecommerce/screens/forgot_password/forgotPasswordScreen.dart';
import 'package:flutter_ecommerce/screens/home/homeScreen.dart';
import 'package:flutter_ecommerce/screens/login_success/loginSuccessScreen.dart';
import 'package:flutter_ecommerce/screens/otp/otpScreen.dart';
import 'package:flutter_ecommerce/screens/sign_in/signInScreen.dart';
import 'package:flutter_ecommerce/screens/sign_up/signUpScreen.dart';
import 'package:flutter_ecommerce/screens/splash/splashScreen.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};