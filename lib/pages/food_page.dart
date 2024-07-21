import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final String? imagePath;

  const FoodPage({super.key, required this.food, this.imagePath});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                widget.food.imagePath,
                width: double.infinity,
                height: screenHeight * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            Text(widget.food.name),
            Text(widget.food.description),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.food.availableAddons.length,
                itemBuilder: (context, index) {
                  Addon addon = widget.food.availableAddons[index];

                  return CheckboxListTile(
                      title: Text(addon.name),
                      value: false,
                      onChanged: (value) {});
                }),
          ],
        ),
      ),
    );
  }
}
