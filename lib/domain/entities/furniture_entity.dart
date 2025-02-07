class FurnitureEntity {
  final int id;
  final String name;
  final int price;
  final bool discount;
  final int? discountPercent;
  final List<String> images;

  FurnitureEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.discount,
    required this.discountPercent,
    required this.images,
  });
}
