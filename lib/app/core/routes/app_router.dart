import 'package:coolmoviesfinal/app/presentation/home/home_page.dart';
import 'package:coolmoviesfinal/app/presentation/splash_screen/splash_screen_page.dart';
import 'package:flutter/material.dart';

import 'app_routes.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    print("[ROUTER] GOING TO ROUTE: '${settings.name}'");
    switch (settings.name) {
      case Routes.INTRO:
        return MaterialPageRoute(builder: (_) => SplashScreenPage());
      case Routes.HOME:
        return MaterialPageRoute(builder: (_) => HomePage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
