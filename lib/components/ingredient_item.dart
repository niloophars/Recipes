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

 @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    var myBox=Hive.box('shopping');
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
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(imageurl,width: w*.2,height: h*.1,fit: BoxFit.cover,),
          ),
          Text("$food\n$quantity $measure",style: TextStyle(
            fontSize: w*.04,fontWeight: FontWeight.bold,letterspacing: 1
          ),),Sizedbox(width: w*.033,),
          ValueListenableBuilder(
            valueListenable:myBox.listenable(),
            builder: (content,box,_){
              bool exist=box.containsKey(food);
              if(exist){
                return GestureDectector(
                  onTap: (){
                    myBox.delete(food);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('item deleted'))
                    )
                  }
                  child: Icon(Icons.done,color: Colors.green,size: w*.07));
              }
              else { 
                return GestureDetector(
                  onTap:(){
                    String value='$food $measure $quantity';
                    myBox.put(food, value);
                    ScoffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('item added successfully'))
                    )
                  },
                child: Icon(
                Icons.add_circle_outline_rounded,size: w*.07,color: Colors.red,)
                );
              }
            },
          )
        ]
      )
    );
  }
}
