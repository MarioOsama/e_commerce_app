import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/features/product/view/widgets/product_view_header.dart';
import 'package:e_commerce_app/features/product/view/widgets/product_view_text_content.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.product});

  final Product product;

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
              ProductViewHeader(product: product),
              verticalSpace(16.0),
              ProductViewTextContent(product: product)
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
          Icons.keyboard_arrow_left_outlined,
          size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
