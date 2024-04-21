import 'package:e_commerce_app/view/cart/widgets/list_view_product_cart/custom_product_cart.dart';
import 'package:flutter/material.dart';

import '../../../../model/product_model.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<ProductModel> productModel = [
      const ProductModel(
          category: "category",
          price: 10,
          name: "name",
          subCategories: ["subCategories"],
          rating: 10,
          description: "description",
          images: ["images"]),
      const ProductModel(
          category: "category",
          price: 10,
          name: "name",
          subCategories: ["subCategories"],
          rating: 10,
          description: "description",
          images: ["images"]),
      const ProductModel(
          category: "category",
          price: 10,
          name: "name",
          subCategories: ["subCategories"],
          rating: 10,
          description: "description",
          images: ["images"]),
      const ProductModel(
          category: "category",
          price: 10,
          name: "name",
          subCategories: ["subCategories"],
          rating: 10,
          description: "description",
          images: ["images"]),
      const ProductModel(
          category: "category",
          price: 10,
          name: "name",
          subCategories: ["subCategories"],
          rating: 10,
          description: "description",
          images: ["images"])
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        itemCount: productModel.length,
        itemBuilder: (context, index) {
          return const CustomProductCart();
        },
      ),
    );
  }
}
