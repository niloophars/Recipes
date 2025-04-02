import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Map<string,dynamic> item;
  const DetailScreen({super.key,required this.item})

 @override
State<DetailScreen> createState() => _DetailScreenState();
 }
  @override
 Widget build(BuildContext context) {
   final h=MediaQuery.of(context).size.height;
   final w=MediaQuery.of(context).size.width;
   String time=widget.item['totalTime'].toString();
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          stack(
            children: [
             Container(
              height:h*.44,
              decoration: BoxDecoration(
               image: DecorationImage(image: NetworkImage(widget,item['image']),fit: Boxfit.cover),
               ),
         Positioned(
               top: h*.04,left: w*.05,
               child:const CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Backbutton(color: Colors.white,),
               )
         )


            ],
          ),
         Padding(padding: EdgeInsets.symmetric(horizontal: W*.04),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Const  SizedBox(height: 20,), 
          Text("$time min"),
          SizedBox(height: h*.01,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButton()
            ],
          )
         ],
         ),
         ),
    
