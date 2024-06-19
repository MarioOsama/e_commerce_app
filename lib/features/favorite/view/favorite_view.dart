import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/features/favorite/view/widgets/favorite_list_view.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  static const List<Product> favoriteProducts = [
    Product(
      id: 1,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 108.20,
      description: 'Dynamic microphone, Speaker microphone',
      oldPrice: 180.00,
    ),
    Product(
      id: 2,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
    ),
    Product(
      id: 3,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
    ),
    Product(
      id: 4,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
    ),
    Product(
      id: 5,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
    ),
    Product(
      id: 6,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
    ),
    Product(
      id: 7,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
    ),
    Product(
      id: 8,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const Column(
        children: [
          Expanded(
            child: FavoriteListView(favoriteProducts: favoriteProducts),
          ),
        ],
      ),
    );
  }

  CustomAppBar _buildAppBar() {
    return const CustomAppBar(
      title: 'Favorites',
      isWithLeading: false,
    );
  }
}
