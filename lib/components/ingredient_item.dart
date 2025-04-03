import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
  final String quantity;
  final String imageUrl;
  final String measure;
  final String food;

  const IngredientItem({
    super.key,
    required this.quantity,
    required this.imageUrl,
    required this.measure,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          // Display ingredient image
          imageUrl.isNotEmpty
              ? Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover)
              : Container(width: 50, height: 50, color: Colors.grey), // Placeholder for missing image

          const SizedBox(width: 10),

          // Display ingredient name, quantity and unit
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(food, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Quantity: $quantity $measure'),
            ],
          ),
        ],
      ),
    );
  }
}
