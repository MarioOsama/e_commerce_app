// ignore_for_file: library_private_types_in_public_api

import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  static final List<Widget> appPages = <Widget>[
    const Scaffold(
      backgroundColor: Colors.amberAccent,
    ),
    const Scaffold(
      backgroundColor: Colors.red,
    ),
    const Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 25, 20),
    ),
    const Scaffold(
      backgroundColor: Colors.blue,
    ),
    const Scaffold(
      backgroundColor: Colors.white,
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: appPages.elementAt(selectedIndex),
      ),
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
            icon: Icon(Icons.favorite_outlined),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
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
