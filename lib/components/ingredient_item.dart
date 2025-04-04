import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
<<<<<<< HEAD
  final String quantity, measure, food;
  const IngredientItem({
    super.key,
    required this.quantity,
    required this.food,
    required this.measure,
 
=======
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
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: h * 0.01, horizontal: w * 0.033),
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
            color: Colors.grey,
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
<<<<<<< HEAD
            
          ),
          Expanded(
            child: Text("$quantity\t $measure\n$food",style: TextStyle(
            fontSize: w*0.04,fontWeight: FontWeight.bold,letterSpacing: 1,),
       
            
          ),),
          SizedBox(width: w*.033,),
        Icon(Icons.add_circle_outline_rounded,size: w*0.07,color: const Color.fromARGB(255, 202, 122, 1),)
=======
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
            
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 8.0),
  //     child: Row(
  //       children: [
  //         // Display ingredient image
  //         imageUrl.isNotEmpty
  //             ? Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover)
  //             : Container(width: 50, height: 50, color: Colors.grey), // Placeholder for missing image
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368

  //         const SizedBox(width: 10),

  //         // Display ingredient name, quantity and unit
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(food, style: const TextStyle(fontWeight: FontWeight.bold)),
  //             Text('Quantity: $quantity $measure'),
  //           ],

  //         ),
  //       ],
  //     ),
  //   ))
  // }
)]));}
}