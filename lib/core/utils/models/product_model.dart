class ProductModel {
  final String category;
  final double price;
  final double? oldPrice;
  final String name;
  final double rating;
  final List<String> subCategories;
  final String description;
  final List<String> images;

  const ProductModel({
    required this.category,
    required this.price,
    this.oldPrice,
    required this.name,
    required this.subCategories,
    required this.rating,
    required this.description,
    required this.images,
  });
}
