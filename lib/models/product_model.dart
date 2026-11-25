class ProductModel {
  new({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.unit,
  });

  final String id;
  final String image;
  final String name;
  final double price;
  final String unit;
}
