import 'package:flutter/material.dart';
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
            child: Column(
          children: [
            Row(
              children: [
                Image.asset(cartItem.food.imagePath, height: 50),
              ],
            )
          ],
        ));
      },
    );
  }
}
