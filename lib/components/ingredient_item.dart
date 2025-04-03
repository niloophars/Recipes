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
<<<<<<< HEAD
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: h * 0.01, horizontal: w * 0.33),
      padding: EdgeInsets.only(
        top: h * .008,
        bottom: h * .033,
        left: h * .008,
        right: w * .08,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              height: h * 0.1,
              width: w * 0.2,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "$food\n$quantity $measure",
            style: TextStyle(
              fontSize: h * 0.02,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          SizedBox(width: w * 0.02),
          Icon(
            Icons.add_circle_outline,
            size: w * 0.07,
            color: Colors.redAccent,
=======
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
>>>>>>> e974f8b5a0e7a9048335c9fdb3e5de616ccf9fd9
          ),
        ],
      ),
    );
  }
}
