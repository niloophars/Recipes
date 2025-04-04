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
        debugPrint('Building IngredientList with ${extendedIngredients.length} items');
        int amount = (extendedIngredients[index]['amount'] ?? 1).toInt();
        
        return IngredientItem(
          quantity: amount.toString(),
          
          measure: extendedIngredients[index]['unit'] ??  '',
          food: extendedIngredients[index]['name'] ??  '',
        );
      },
    );
  }
}
