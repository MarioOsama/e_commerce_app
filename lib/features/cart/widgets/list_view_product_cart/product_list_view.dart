import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/features/cart/widgets/list_view_product_cart/custom_product_cart.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<Product> products = [
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return CustomProductCart(
            product: products[index],
          );
        },
      ),
    );
  }
}
