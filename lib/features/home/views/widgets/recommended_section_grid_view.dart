import 'package:e_commerce_app/core/utils/helpers/extensions.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/routing/app_routes.dart';
import 'package:e_commerce_app/core/utils/widgets/product_card.dart';
import 'package:flutter/material.dart';

class RecommendedSectionGridView extends StatelessWidget {
  const RecommendedSectionGridView({super.key});

  final List<Product> products = const [
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
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          context.pushNamed(AppRoutes.product, arguments: products[index]);
        },
        child: ProductCard(
          product: products[index],
        ),
      ),
    );
  }
}
