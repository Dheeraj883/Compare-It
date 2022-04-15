import 'package:compareit/screens/cart/cart_screen.dart';
import 'package:compareit/screens/complete_profile/complete_profile_screen.dart';
import 'package:compareit/screens/details/details_screen.dart';
import 'package:compareit/screens/forgot_password/forgot_password_screen.dart';
import 'package:compareit/screens/home/home_screen.dart';
import 'package:compareit/screens/landing_page/landing_page.dart';
import 'package:compareit/screens/login_success/login_success_screen.dart';
import 'package:compareit/screens/otp/otp_screen.dart';
import 'package:compareit/screens/profile/profile_screen.dart';
import 'package:compareit/screens/sign_in/sign_in_screen.dart';
import 'package:compareit/screens/splash/splash_screen.dart';
import 'package:compareit/services/auth.dart';
import 'package:flutter/widgets.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(auth: Auth()),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(auth: Auth()),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(auth: Auth()),
  LandingPage.routeName: (context) => LandingPage(auth: Auth()),
};
