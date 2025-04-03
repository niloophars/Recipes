import 'package:flutter/material.dart';

class RecipeCategoryView extends StatelessWidget {
  final String name,image;
  const RecipeCategoryView({super.key,required this.name,required this.image});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return SizedBox(
      height: h*.105,width: w*.2,
      child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          container(
            height: h*.07,
            width: w*.15,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(image),fit: Boxfit.cover),
            ),
          ),
          Center(
            child: Text(name,style: TextStyle(
              fontweight: Fontweight,bold,color: Colors.black45
            ),),
          )
         ],
       ),
    );
  }
}