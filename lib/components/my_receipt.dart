import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Thank you for your order !'),
          SizedBox(height: 25),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Restaurant>(
                  builder: (context, restaurant, child) =>
                      Text(restaurant.displayCartReceipt()))),
        ],
      ),
    );
  }
}
