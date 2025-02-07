class DetailFurnitureEntity {
  final int id;
  final String name;
  final int price;
  final String description;
  final double weight;
  final int height;
  final int width;
  final bool discount;
  final String discountStart;
  final String discountEnd;
  final int discountPercentage;
  final List<String> images;

  DetailFurnitureEntity({
    required this.id,
    required this.images,
    required this.discount,
    required this.price,
    required this.name,
    required this.width,
    required this.description,
    required this.height,
    required this.discountEnd,
    required this.discountPercentage,
    required this.discountStart,
    required this.weight,
  });
}
