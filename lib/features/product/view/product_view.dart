import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/features/product/view/widgets/product_view_header.dart';
import 'package:e_commerce_app/features/product/view/widgets/product_view_text_content.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  static const ProductModel product = ProductModel(
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
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductViewHeader(product: product),
              verticalSpace(16.0),
              const ProductViewTextContent(product: product)
            ],
          ),
        ),
      ),
    );
  }

  CustomAppBar _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: product.category,
      backButton: IconButton(
        alignment: Alignment.topCenter,
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
