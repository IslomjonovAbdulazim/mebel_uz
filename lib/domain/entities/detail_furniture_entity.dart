class DetailFurnitureEntity {
  final int id;
  final String name;
  final int price;
  final String description;
  final double weight;
  final int height;
  final int width;
  final List<String> images;
  final String material;

  DetailFurnitureEntity({
    required this.id,
    required this.images,
    required this.price,
    required this.name,
    required this.width,
    required this.description,
    required this.height,
    required this.weight,
    required this.material,
  });
}

final fakeDetail = DetailFurnitureEntity(
  id: 1,
  name: "Mountain Landscape Painting",
  price: 150,
  description:
      "A beautiful mountain landscape painting with vibrant colors." * 5,
  weight: 2.5,
  height: 60,
  width: 40,
  images: [
    "https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8=",
    "https://akshitphotography.com/wp-content/uploads/2021/08/Nature-Photography-105.jpg",
    "https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2023/06/nature-1686808887.jpg",
  ],
  material: 'Leather va Steel',
);
