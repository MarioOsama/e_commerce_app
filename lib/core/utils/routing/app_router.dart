import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/routing/app_routes.dart';
import 'package:e_commerce_app/features/Auth/views/login_screen.dart';
import 'package:e_commerce_app/features/Auth/views/sign_up_screen.dart';
import 'package:e_commerce_app/features/browse/browse_result/view/browse_result.dart';
import 'package:e_commerce_app/features/browse/view/browse_view.dart';
import 'package:e_commerce_app/features/cart/cart_view.dart';
import 'package:e_commerce_app/features/favorite/view/favorite_view.dart';
import 'package:e_commerce_app/features/home/views/home_view.dart';
import 'package:e_commerce_app/features/product/view/product_view.dart';
import 'package:e_commerce_app/features/profile/views/profile_screen.dart';
import 'package:e_commerce_app/main_screen.dart';
import 'package:flutter/material.dart';

import '../../../features/on_bording/onbording_view.dart';

class AppRouter {
  final bool isFirstTime;
  const AppRouter({required this.isFirstTime});

  Route onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.onBoarding:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(body: OnBordingView()));
      case AppRoutes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case AppRoutes.mainScreen:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case AppRoutes.product:
        return MaterialPageRoute(
          builder: (_) => ProductView(
            product: args as Product,
          ),
        );
      case AppRoutes.favorite:
        return MaterialPageRoute(
          builder: (_) => const FavoriteView(),
        );
      case AppRoutes.cart:
        return MaterialPageRoute(
          builder: (_) => const CartView(),
        );
      case AppRoutes.browse:
        return MaterialPageRoute(
          builder: (_) => const BrowseView(),
        );
      case AppRoutes.browseResult:
        return MaterialPageRoute(
          builder: (_) => const BrowseResultView(),
        );
      case AppRoutes.profile:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text('Invalid Route'))));
    }
  }
}
