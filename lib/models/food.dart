class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;

  Food(
    this.description,
    this.imagePath,
    this.price, {
    required this.name,
  });
}

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
