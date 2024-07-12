import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('\$2.99', style: myPrimaryTextStyle),
              Text(
                'Delivery Fee',
                style: mySecondaryTextStyle,
              )
            ],
          ),
          Column(
            children: [
              Text('10-25 min', style: mySecondaryTextStyle),
              Text('Delivery time', style: myPrimaryTextStyle)
            ],
          )
        ],
      ),
    );
  }
}
