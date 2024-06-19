import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/features/cart/widgets/list_view_product_cart/custom_product_cart.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<ProductModel> productModel = [
      ProductModel(
        category: "category",
        price: 108.20,
        oldPrice: 199.99,
        name: "RØDE PodMic",
        subCategories: ['Dynamic microphone', 'Speaker microphone'],
        rating: 10,
        description: "description",
        images: ["assets/img/Sony_Headphones_01.png"],
      ),
      ProductModel(
        category: "category",
        price: 108.20,
        name: "RØDE PodMic",
        subCategories: ['Dynamic microphone', 'Speaker microphone'],
        rating: 10,
        description: "description",
        images: ["assets/img/Sony_Headphones_01.png"],
      ),
      ProductModel(
        category: "category",
        price: 108.20,
        name: "RØDE PodMic",
        subCategories: ['Dynamic microphone', 'Speaker microphone'],
        rating: 10,
        description: "description",
        images: ["assets/img/Sony_Headphones_01.png"],
      ),
      ProductModel(
        category: "category",
        price: 108.20,
        name: "RØDE PodMic",
        subCategories: ['Dynamic microphone', 'Speaker microphone'],
        rating: 10,
        description: "description",
        images: ["assets/img/Sony_Headphones_01.png"],
      ),
      ProductModel(
        category: "category",
        price: 108.20,
        oldPrice: 199.99,
        name: "RØDE PodMic",
        subCategories: ['Dynamic microphone', 'Speaker microphone'],
        rating: 10,
        description: "description",
        images: ["assets/img/Sony_Headphones_01.png"],
      )
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        itemCount: productModel.length,
        itemBuilder: (context, index) {
          return CustomProductCart(
            product: productModel[index],
          );
        },
      ),
    );
  }
}
