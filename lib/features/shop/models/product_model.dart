class ProductModel {
  final String id;
  final String title;
  final double price;
  final int discount;
  final String description;
  final String image;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.discount,
      required this.description,
      required this.image});
}
