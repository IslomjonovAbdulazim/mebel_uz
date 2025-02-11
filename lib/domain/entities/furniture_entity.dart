class FurnitureEntity {
  final int id;
  final String name;
  final int price;
  final List<String> images;

  FurnitureEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.images,
  });
}

final fakeFurniture = FurnitureEntity(
  id: -1,
  name: "Not Name",
  price: -1,
  images: ["-1"],
);
