class ProductModel {
  final String id;
  final String shopId;
  final String title;
  final double price;
  final int discount;
  final String description;
  final List<String> image;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.discount,
    required this.description,
    required this.image,
    required this.shopId,
  });
}
