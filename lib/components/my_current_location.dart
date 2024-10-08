import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver now',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}

void openLocationSearchBox(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
        title: Text('Your location'),
        content: TextField(
          decoration: const InputDecoration(hintText: 'Enter search address..'),
        ),
        actions: [
          MaterialButton(
              onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          MaterialButton(
              onPressed: () => Navigator.pop(context), child: Text('Save')),
        ]),
  );
}
