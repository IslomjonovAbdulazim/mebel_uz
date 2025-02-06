class DetailFurnitureEntity {
  final String id;
  final String model;
  final int price;
  final List<String> images;
  final String material;
  final double weight;
  final int height;
  final int width;
  final String description;

  DetailFurnitureEntity({
    required this.id,
    required this.model,
    required this.price,
    required this.images,
    required this.material,
    required this.weight,
    required this.height,
    required this.width,
    required this.description,
  });
}
