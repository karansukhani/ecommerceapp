

import 'package:ecommerceapp/router/routing_constant.dart';
import 'package:ecommerceapp/screens/cart/cart.dart';
import 'package:ecommerceapp/screens/home_page/home_screen.dart';
import 'package:ecommerceapp/screens/login/login.dart';
import 'package:ecommerceapp/screens/signup/signup.dart';
import 'package:ecommerceapp/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  activeRouteName = settings.name ?? ""; // to get the current file
  switch (settings.name) {
    case splashScreenRoute:
      return MaterialPageRoute(builder: (_) => const SplashScreen());

    case loginScreenRoute:
      return MaterialPageRoute(builder: (_) => LoginState());

    case signupScreenRoute:
      return MaterialPageRoute(builder: (_) => Signup());


    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
        settings: RouteSettings(arguments: settings.arguments),
      );
    case cartScreenRoute:
      return MaterialPageRoute(
        builder: (context) => CartState(settings.arguments),
        settings: RouteSettings(arguments: settings.arguments),
      );
    default:
      return MaterialPageRoute(builder: (_) {
        return Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        );
      });
  }
}
