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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.asset(
                  widget.food.imagePath,
                  width: double.infinity,
                  height: screenHeight * 0.5,
                  fit: BoxFit.cover,
                ),
              ),
              Text(widget.food.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              SizedBox(height: 10),
              Text(
                widget.food.description,
                style: TextStyle(
                    fontSize: 16, color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: 10),
              Text(
                'Addons',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: widget.food.availableAddons.length,
                    itemBuilder: (context, index) {
                      Addon addon = widget.food.availableAddons[index];

                      return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text(addon.price.toString()),
                          value: false,
                          onChanged: (value) {});
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
