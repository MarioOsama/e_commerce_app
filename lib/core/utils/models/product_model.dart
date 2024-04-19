import 'package:uuid/uuid.dart';

const uuid = Uuid();

// TODO: Add ID field to the model
class ProductModel {
  final String category;
  final double price;
  final double? oldPrice;
  final String name;
  final double rating;
  final List<String> subCategories;
  final String description;
  final List<String> images;
  final String? model;

  const ProductModel({
    this.model,
    this.oldPrice,
    required this.category,
    required this.price,
    required this.name,
    required this.subCategories,
    required this.rating,
    required this.description,
    required this.images,
  });
}
