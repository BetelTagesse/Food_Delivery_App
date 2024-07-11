import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      child: Row(
        children: [
          Column(
            children: [Text('\$2.99'), Text('Delivery Fee')],
          ),
          Column(
            children: [Text('10-25 min'), Text('Delivery time')],
          )
        ],
      ),
    );
  }
}
