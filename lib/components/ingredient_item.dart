import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
  final String quantity, measure, food, imageUrl;
  const IngredientItem({
    super.key,
    required this.quantity,
    required this.food,
    required this.measure,
    required this.imageUrl,
  });

  Widget build(BuildContext context) {
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
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
