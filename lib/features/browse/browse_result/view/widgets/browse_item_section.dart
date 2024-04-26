import 'package:e_commerce_app/core/utils/helpers/extensions.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/routing/app_routes.dart';
import 'package:e_commerce_app/core/utils/widgets/product_card.dart';
import 'package:flutter/material.dart';

class RecommendedSectionGridView extends StatelessWidget {
  const RecommendedSectionGridView({super.key});

  final List<ProductModel> products = const [
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'RØDE PodMic',
      price: 108.20,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      oldPrice: 199.99,
      rating: 4.5,
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      rating: 4.5,
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      rating: 4.5,
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      rating: 4.5,
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      rating: 4.5,
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      rating: 4.5,
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      rating: 4.5,
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Headphones',
      name: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      rating: 4.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          // * Navigate to the product details screen
          context.pushNamed(AppRoutes.product, arguments: products[index]);
        },
        child: ProductCard(
          product: products[index],
        ),
      ),
    );
  }
}
