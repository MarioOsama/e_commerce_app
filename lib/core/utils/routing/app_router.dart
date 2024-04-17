import 'package:e_commerce_app/core/utils/routing/app_routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter();

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onBoarding:
        // Replace this with the on boarding screen
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                body: Center(child: Text('On Boarding Screen'))));
      case AppRoutes.register:
        // Replace this with the register screen
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text('Register Screen'))));
      case AppRoutes.login:
        // Replace this with the login screen
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text('Login Screen'))));
      case AppRoutes.home:
        // Replace this with the home screen
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text('Home Screen'))));
      default:
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text('Invalid Route'))));
    }
  }
}
