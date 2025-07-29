import 'package:ecommerce/core/routes/routes.dart';
import 'package:ecommerce/features/homepage/ui/homepage.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(body: Center(child: Text('Page not found')));
          },
        );
    }
  }
}
