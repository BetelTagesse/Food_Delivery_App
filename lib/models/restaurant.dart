import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //Burgers
    Food(
      description:
          'A juicy beef patty with melted cheese, lettuce, tomato and hins of onion and pickle .',
      imagePath: 'lib/images/burgers/cheese_burger.png',
      price: 0.99,
      category: FoodCategory.burgers,
      name: 'Classic Cheese Burger',
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'mayonnaise', price: 2.99)
      ],
    ),
    Food(
      description:
          'A juicy beef patty with melted cheese, crispy bacon, lettuce, and tomato.',
      imagePath: 'lib/images/burgers/bacon_cheeseburger.png',
      price: 5.99,
      category: FoodCategory.burgers,
      name: 'Bacon Cheese Burger',
      availableAddons: [
        Addon(name: 'Extra Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      description:
          'A healthy patty made from vegetables, topped with lettuce, tomato, and avocado.',
      imagePath: 'lib/images/burgers/veggie_burger.png',
      price: 4.99,
      category: FoodCategory.burgers,
      name: 'Veggie Burger',
      availableAddons: [
        Addon(name: 'Vegan Cheese', price: 0.99),
        Addon(name: 'Grilled Mushrooms', price: 0.99),
      ],
    ),
    Food(
      description:
          'A savory burger with BBQ sauce, cheddar cheese, and crispy onion rings.',
      imagePath: 'lib/images/burgers/bbq_burger.png',
      price: 6.49,
      category: FoodCategory.burgers,
      name: 'BBQ Burger',
      availableAddons: [
        Addon(name: 'Extra BBQ Sauce', price: 0.49),
        Addon(name: 'Pickles', price: 0.29),
      ],
    ),
    Food(
      description:
          'Two juicy beef patties with double melted cheese, lettuce, and tomato.',
      imagePath: 'lib/images/burgers/double_cheeseburger.png',
      price: 7.99,
      category: FoodCategory.burgers,
      name: 'Double Cheese Burger',
      availableAddons: [
        Addon(name: 'Extra Patty', price: 2.49),
        Addon(name: 'Extra Cheese', price: 0.99),
      ],
    ),

    //sides
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
    Food(
      description:
          'Crispy garlic bread with a golden crust and a buttery garlic topping.',
      imagePath: 'lib/images/sides/garlic_bread.png',
      price: 2.49,
      category: FoodCategory.sides,
      name: 'Garlic Bread',
      availableAddons: [
        Addon(name: 'Extra Garlic Butter', price: 0.99),
        Addon(name: 'Cheese Topping', price: 1.29),
      ],
    ),

    Food(
      description:
          'Crunchy onion rings coated in a golden batter, fried to perfection.',
      imagePath: 'lib/images/sides/onion_rings.png',
      price: 2.99,
      category: FoodCategory.sides,
      name: 'Onion Rings',
      availableAddons: [
        Addon(name: 'BBQ Sauce', price: 0.99),
        Addon(name: 'Ranch Dip', price: 0.99),
      ],
    ),
    Food(
      description: 'Sweet and crispy sweet potato fries, lightly salted.',
      imagePath: 'lib/images/sides/sweet_potato_fries.png',
      price: 2.49,
      category: FoodCategory.sides,
      name: 'Sweet Potato Fries',
      availableAddons: [
        Addon(name: 'Honey Mustard Dip', price: 0.99),
        Addon(name: 'Spicy Mayo', price: 0.99),
      ],
    ),
    Food(
      description:
          'Cheese-filled mozzarella sticks fried until crispy and golden.',
      imagePath: 'lib/images/sides/mozzarella_sticks.png',
      price: 3.49,
      category: FoodCategory.sides,
      name: 'Mozzarella Sticks',
      availableAddons: [
        Addon(name: 'Marinara Sauce', price: 0.99),
        Addon(name: 'Garlic Aioli', price: 0.99),
      ],
    ),

    //salads
    Food(
      description:
          'Fresh garden salad with lettuce, tomatoes, cucumbers, and a light vinaigrette.',
      imagePath: 'lib/images/salads/garden_salad.png',
      price: 4.99,
      category: FoodCategory.salads,
      name: 'Garden Salad',
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 2.99),
        Addon(name: 'Avocado', price: 1.49),
        Addon(name: 'Extra Dressing', price: 0.99),
      ],
    ),
    Food(
      description:
          'Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.',
      imagePath: 'lib/images/salads/caesar_salad.png',
      price: 5.99,
      category: FoodCategory.salads,
      name: 'Caesar Salad',
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 2.99),
        Addon(name: 'Extra Croutons', price: 0.99),
      ],
    ),
    Food(
      description:
          'A fresh mix of cucumbers, tomatoes, olives, and feta cheese with olive oil dressing.',
      imagePath: 'lib/images/salads/greek_salad.png',
      price: 6.49,
      category: FoodCategory.salads,
      name: 'Greek Salad',
      availableAddons: [
        Addon(name: 'Grilled Shrimp', price: 3.49),
        Addon(name: 'Extra Feta', price: 0.99),
      ],
    ),
    Food(
      description:
          'A hearty salad with bacon, avocado, eggs, tomatoes, and blue cheese crumbles.',
      imagePath: 'lib/images/salads/cobb_salad.png',
      price: 7.99,
      category: FoodCategory.salads,
      name: 'Cobb Salad',
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 2.99),
        Addon(name: 'Extra Bacon', price: 1.49),
      ],
    ),
    Food(
      description:
          'A light and healthy salad with quinoa, avocado, cherry tomatoes, and a lemon vinaigrette.',
      imagePath: 'lib/images/salads/quinoa_salad.png',
      price: 6.99,
      category: FoodCategory.salads,
      name: 'Quinoa Salad',
      availableAddons: [
        Addon(name: 'Chia Seeds', price: 0.99),
        Addon(name: 'Grilled Tofu', price: 2.49),
      ],
    ),

    //drinks
    Food(
      description: 'A refreshing cold beverage to complement your meal.',
      imagePath: 'lib/images/drinks/cola.png',
      price: 1.49,
      category: FoodCategory.drinks,
      name: 'Coca-Cola',
      availableAddons: [
        Addon(name: 'Ice', price: 0.10),
        Addon(name: 'Lemon Slice', price: 0.20),
      ],
    ),

    Food(
      description:
          'Freshly brewed iced tea, served chilled with a hint of lemon.',
      imagePath: 'lib/images/drinks/iced_tea.png',
      price: 1.99,
      category: FoodCategory.drinks,
      name: 'Iced Tea',
      availableAddons: [
        Addon(name: 'Extra Lemon', price: 0.20),
        Addon(name: 'Honey', price: 0.50),
      ],
    ),
    Food(
      description:
          'Freshly squeezed lemons with a hint of sugar, served over ice.',
      imagePath: 'lib/images/drinks/lemonade.png',
      price: 2.49,
      category: FoodCategory.drinks,
      name: 'Lemonade',
      availableAddons: [
        Addon(name: 'Mint Leaves', price: 0.30),
        Addon(name: 'Strawberries', price: 0.99),
      ],
    ),
    Food(
      description: 'A healthy blend of mixed berries, bananas, and yogurt.',
      imagePath: 'lib/images/drinks/smoothie.png',
      price: 3.99,
      category: FoodCategory.drinks,
      name: 'Mixed Berry Smoothie',
      availableAddons: [
        Addon(name: 'Protein Powder', price: 1.99),
        Addon(name: 'Chia Seeds', price: 0.99),
      ],
    ),
    Food(
      description:
          'A creamy vanilla milkshake topped with whipped cream and a cherry.',
      imagePath: 'lib/images/drinks/milkshake.png',
      price: 3.99,
      category: FoodCategory.drinks,
      name: 'Vanilla Milkshake',
      availableAddons: [
        Addon(name: 'Extra Whipped Cream', price: 0.50),
        Addon(name: 'Chocolate Syrup', price: 0.99),
      ],
    ),

    //desert
    Food(
      description:
          'A rich and creamy slice of chocolate cake with layers of ganache.',
      imagePath: 'lib/images/desserts/chocolate_cake.png',
      price: 3.99,
      category: FoodCategory.desserts,
      name: 'Chocolate Cake',
      availableAddons: [
        Addon(name: 'Whipped Cream', price: 0.50),
        Addon(name: 'Extra Chocolate Syrup', price: 0.99),
      ],
    ),
    Food(
      description:
          'A slice of creamy New York-style cheesecake with a graham cracker crust.',
      imagePath: 'lib/images/desserts/cheesecake.png',
      price: 4.49,
      category: FoodCategory.desserts,
      name: 'Cheesecake',
      availableAddons: [
        Addon(name: 'Strawberry Topping', price: 0.99),
        Addon(name: 'Caramel Sauce', price: 0.99),
      ],
    ),
    Food(
      description:
          'Warm chocolate brownie topped with vanilla ice cream and chocolate drizzle.',
      imagePath: 'lib/images/desserts/brownie_sundae.png',
      price: 5.49,
      category: FoodCategory.desserts,
      name: 'Brownie Sundae',
      availableAddons: [
        Addon(name: 'Extra Ice Cream Scoop', price: 1.49),
        Addon(name: 'Nuts', price: 0.99),
      ],
    ),
    Food(
      description:
          'Traditional apple pie with a flaky crust and cinnamon-spiced apples.',
      imagePath: 'lib/images/desserts/apple_pie.png',
      price: 3.49,
      category: FoodCategory.desserts,
      name: 'Apple Pie',
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: 'Caramel Drizzle', price: 0.99),
      ],
    ),
    Food(
      description:
          'A classic ice cream sundae topped with chocolate sauce, nuts, and a cherry.',
      imagePath: 'lib/images/desserts/ice_cream_sundae.png',
      price: 4.99,
      category: FoodCategory.desserts,
      name: 'Ice Cream Sundae',
      availableAddons: [
        Addon(name: 'Extra Nuts', price: 0.50),
        Addon(name: 'Sprinkles', price: 0.29),
      ],
    ),
  ];

//Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

//OPERATIONS

  final List<CartItem> _cart = [];

//add to the cart

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

//remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

//get total price
  double getTotalPrice() {
    double total = 0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

//get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

//Helpers

//Generate a receipt

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln("---------");

    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}');
    }
  }

  String _formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => '${addon.name} (${_formatPrice(addon.price)})')
        .join(', ');
  }

//
}
