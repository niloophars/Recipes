import 'package:flutter/material.dart';
import 'ingredient_item.dart';

class IngredientList extends StatelessWidget {
  final List<dynamic> extendedIngredients;

  const IngredientList({super.key, required this.extendedIngredients});

  @override
  Widget build(BuildContext context) {
   

    return ListView.builder(
      physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
      itemCount: extendedIngredients.length,
      
      itemBuilder: (context, index) {
<<<<<<< HEAD
        debugPrint('Building IngredientList with ${extendedIngredients.length} items');
        int amount = (extendedIngredients[index]['amount'] ?? 1).toInt();
        
        return IngredientItem(
          quantity: amount.toString(),
          
          measure: extendedIngredients[index]['unit'] ??  '',
          food: extendedIngredients[index]['name'] ??  '',
=======
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
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368
        );
      },
    );
  }
}
