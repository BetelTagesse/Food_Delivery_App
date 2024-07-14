import 'package:food_delivery_app/models/food.dart';

class Restaurant {
  final List<Food> _menu = [
    //Burgers
    Food(
        description:
            'A juicy beef patty with melted cheese, lettuce, tomato and hins of onion and pickle .',
        imagePath: 'lib/images/burgers/cheese_burger.png',
        price: 0.99,
        category: FoodCategory.burgers,
        name: 'classic cheeseburger',
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'mayonnaise', price: 2.99)
        ]),
    Food(
      description:
          'Crispy golden fries with a perfect balance of salt and crunch.',
      imagePath: 'lib/images/sides/fries.png',
      price: 1.99,
      category: FoodCategory.sides,
      name: 'French Fries',
      availableAddons: [
        Addon(name: 'Extra Salt', price: 0.29),
        Addon(name: 'Cheese Dip', price: 0.99),
        Addon(name: 'Ketchup', price: 0.49),
      ],
    ),
  ];
}
