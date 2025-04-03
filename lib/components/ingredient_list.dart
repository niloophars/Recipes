import 'package:flutter/material.dart';
import 'ingredient_item.dart';

class IngredientList extends StatelessWidget {
  final List<dynamic> ingredients;

  const IngredientList({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
      itemCount: ingredients.length,
      itemBuilder: (context, index) {
        var ingredient = ingredients[index];

        // Safely handle missing or null fields
        int quantity = (ingredient['amount'] ?? 1).toInt(); // Provide default value
        String unit = ingredient['unit'] ?? ''; // Provide empty string if unit is null
        String name = ingredient['name'] ?? ''; // Fallback to empty string for name
        String imageUrl = ingredient['image'] ?? ''; // Fallback to empty string for image

        return IngredientItem(
          quantity: quantity.toString(),
          imageUrl: imageUrl,
          measure: unit,
          food: name,
        );
      },
    );
  }
}
