
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sb_myreports/features/splash/presentation/pages/splash_screen.dart';

import 'app_routes.dart';


class AppRouter {
  ///To generate routes for MaterialApp
  Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      default:
        throw ('This route name does not exit');
    }
  }
}
