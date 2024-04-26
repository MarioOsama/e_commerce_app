// ignore_for_file: library_private_types_in_public_api

import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/features/browse/view/browse_view.dart';
import 'package:e_commerce_app/features/cart/cart_view.dart';
import 'package:e_commerce_app/features/favorite/view/favorite_view.dart';
import 'package:e_commerce_app/features/home/views/home_view.dart';
import 'package:e_commerce_app/features/profile/views/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<MainScreen> {
  int selectedIndex = 0;

  static final List<Widget> appPages = <Widget>[
    const HomeView(),
    const BrowseView(),
    const FavoriteView(),
    const CartView(),
    const ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appPages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.black,
        unselectedItemColor: Colors.black45,
        showUnselectedLabels: true,
        onTap: onItemTapped,
        elevation: 0.0,
      ),
    );
  }
}
