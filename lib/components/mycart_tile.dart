import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_quantity_selector.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class MycartTile extends StatelessWidget {
  final CartItem cartItem;
  const MycartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        return Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              cartItem.food.name,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            '\$${cartItem.food.price}',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ],
                      ),
                      const Spacer(),
                      MyQuantitySelector(
                          quantity: cartItem.quantity,
                          food: cartItem.food,
                          onIncrement: () {
                            restaurant.addToCart(
                                cartItem.food, cartItem.selectedAddons);
                          },
                          onDecrement: () {
                            restaurant.removeFromCart(cartItem);
                          })
                    ],
                  ),
                ),
                //Addons
                SizedBox(
                  height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                  child: ListView(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                    scrollDirection: Axis.horizontal,
                    children: cartItem.selectedAddons
                        .map(
                          (addon) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: FilterChip(
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                              labelStyle: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontSize: 12),
                              label: Row(
                                children: [
                                  Text(addon.name),
                                  SizedBox(width: 5),
                                  Text('\$${(addon.price)}'),
                                ],
                              ),
                              shape: StadiumBorder(
                                  side: BorderSide(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary)),
                              onSelected: (value) {},
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
