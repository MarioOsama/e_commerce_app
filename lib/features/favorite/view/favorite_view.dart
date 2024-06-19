import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/features/favorite/view/widgets/favorite_list_view.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  static const List<ProductModel> favoriteProducts = [
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'SONY Premium Wireless Headphones',
      price: 108.20,
      description:
          'The technology with two noise sensors and two microphones on each ear cup detects ambient noise and sends the data to the HD noise minimization processor QN1. Using a new algorithm, the QN1 then processes and minimizes noise for different acoustic environments in real time. Together with a new Bluetooth Audio SoC ',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      oldPrice: 199.99,
      rating: 4.5,
      model: 'WH-1000XM4, Black',
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'SONY Premium Wireless Headphones',
      price: 108.20,
      description:
          'The technology with two noise sensors and two microphones on each ear cup detects ambient noise and sends the data to the HD noise minimization processor QN1. Using a new algorithm, the QN1 then processes and minimizes noise for different acoustic environments in real time. Together with a new Bluetooth Audio SoC ',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      // oldPrice: 199.99,
      rating: 4.5,
      model: 'WH-1000XM4, Black',
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'SONY Premium Wireless Headphones',
      price: 108.20,
      description:
          'The technology with two noise sensors and two microphones on each ear cup detects ambient noise and sends the data to the HD noise minimization processor QN1. Using a new algorithm, the QN1 then processes and minimizes noise for different acoustic environments in real time. Together with a new Bluetooth Audio SoC ',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      // oldPrice: 199.99,
      rating: 4.5,
      model: 'WH-1000XM4, Black',
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'SONY Premium Wireless Headphones',
      price: 108.20,
      description:
          'The technology with two noise sensors and two microphones on each ear cup detects ambient noise and sends the data to the HD noise minimization processor QN1. Using a new algorithm, the QN1 then processes and minimizes noise for different acoustic environments in real time. Together with a new Bluetooth Audio SoC ',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      oldPrice: 199.99,
      rating: 4.5,
      model: 'WH-1000XM4, Black',
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'SONY Premium Wireless Headphones',
      price: 108.20,
      description:
          'The technology with two noise sensors and two microphones on each ear cup detects ambient noise and sends the data to the HD noise minimization processor QN1. Using a new algorithm, the QN1 then processes and minimizes noise for different acoustic environments in real time. Together with a new Bluetooth Audio SoC ',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      // oldPrice: 199.99,
      rating: 4.5,
      model: 'WH-1000XM4, Black',
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'SONY Premium Wireless Headphones',
      price: 108.20,
      description:
          'The technology with two noise sensors and two microphones on each ear cup detects ambient noise and sends the data to the HD noise minimization processor QN1. Using a new algorithm, the QN1 then processes and minimizes noise for different acoustic environments in real time. Together with a new Bluetooth Audio SoC ',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      // oldPrice: 199.99,
      rating: 4.5,
      model: 'WH-1000XM4, Black',
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
