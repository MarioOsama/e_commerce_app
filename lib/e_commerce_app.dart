import 'package:e_commerce_app/core/utils/routing/app_router.dart';
import 'package:e_commerce_app/core/utils/routing/app_routes.dart';
import 'package:flutter/material.dart';

class EcommerceApp extends StatelessWidget {
  final AppRouter appRouter;
  const EcommerceApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          appRouter.isFirstTime ? AppRoutes.onBoarding : AppRoutes.home,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
