import 'package:e_commerce_app/core/services/local_data/shared_preferences.dart';
import 'package:e_commerce_app/core/utils/routing/app_router.dart';
import 'package:e_commerce_app/e_commerce_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // To check if the user is a first time user
  bool isFirstTime = await userStatus;
  AppRouter appRouter = AppRouter(isFirstTime: isFirstTime);
  runApp(
    EcommerceApp(
      appRouter: appRouter,
    ),
  );
}
