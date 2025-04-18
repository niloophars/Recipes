import 'package:flutter/material.dart';
import 'package:nomnom/constants/constant_function.dart';
import 'package:nomnom/components/circle_button.dart';
import 'package:nomnom/components/custom_clip_path.dart';
import 'package:nomnom/components/ingredient_list.dart';
import 'package:nomnom/constants/share.dart';
import 'package:nomnom/constants/start_cooking.dart';

class DetailScreen extends StatefulWidget {
  final Map <String,dynamic> item;
  const DetailScreen({super.key,required this.item});
  
  @override
 State<DetailScreen> createState() => _DetailScreenState();
 }


  class _DetailScreenState extends State<DetailScreen>{
    List<Map<String, dynamic>> ingredients = [];

  @override
    void initState() {
    super.initState();
    _fetchIngredients();
  }

  void _fetchIngredients() async {
    final data = await ConstantFunction.getIngredient(widget.item['id']);
    setState(() {
      ingredients = data;
    });

  }

  @override
 Widget build(BuildContext context) {

   final h=MediaQuery.of(context).size.height;
   final w=MediaQuery.of(context).size.width;
  //  String time=widget.item['totalTime'].toString();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 227, 209),
      body: SingleChildScrollView(
        child: Column(
          children: [

        SizedBox(height: 20,), 
          Text("$time min"),
          SizedBox(height: h*.01,),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButton(
               icon: Icons.share,label: 'Share',
              ),
               CircleButton(
               icon: Icons.bookmark_border,label: 'Save',
              ),
               CircleButton(
               icon: Icons.monitor_heart_outlined,label: 'Calories',
              ),
               CircleButton(
               icon: Icons.table_chart_outlined,label: 'unit chart',
              ),//Row
            SizedBox(height: h * 0.02),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                Text('Direction',style: TextStyle(fontWeight: FontWeight.bold,fontSize: w*.06),),
                SizedBox(width: w*.34,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Start'),
                ),
                
                SizedBox(height: h * 0.02),

                )
               ]
             )

            ],
          )
         ],
         ),
         ),
    

            Stack(
              children: [
               Container(
                height:h*0.44,
                decoration: BoxDecoration(
                 image: DecorationImage(image: NetworkImage(widget.item['image']),fit: BoxFit.cover),
                 ),
                ),
                Positioned(
                 top: h*.04,left: w*.05,
                 child:const CircleAvatar(
                  backgroundColor:   Color.fromARGB(255, 202, 122, 1),
                  child: BackButton(color: Colors.white,),
                 )
                ),
        
        
              ],
            ),
           Padding(padding: EdgeInsets.symmetric(horizontal: w*0.04),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 20,),
              Text(widget.item['title'],
                style: TextStyle(
                  fontSize: w*0.05, fontWeight: FontWeight.w700,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 1,),
              // Text("$time min"),
              SizedBox(height: h*0.01,),
        
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(

                  onTap: () {
                    ShareRecipe.share(widget.item['url']);
                  },
                  child: const CircleButton(
                    icon: Icons.share, label: 'Share',
                  ),
                ),
                CircleButton(

                  onTap:(){
                    ShareRecipe.share(widget.item['url']);
                  }
                  child: const CircleButton(
                  icon: Icons.share, label: 'Share',
                 ),
               ),
               ValueListenableBuilder(
                valueListenable:myBox.listenable(),
               buillder:(context,box,_){
                String key=widget.item['label'];
                bool saved=myBox.containsKey(key);
                if(saved){
                  return GestureDetector(
                    onTap: (){
                      myBox.delete(key);
                      scaffoldMessenger.of(context).showSnackBar(
                       const Snackbar(
                        duration: Duration(seconds: 1),
                        content: Text('Recipe Deleted'))
                      );
                    },
                    child: const CircleButton(
                   icon: Icons.bookmark,label:'Saved',)
                  );
                }
                else{
                  return GestureDetector(
                    onTap: (){
                      myBox.put(key, key);
                      ScaffoldMessenger.of(context).showSnackBar(
                       const  SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text('Recipe saved successfully'))
                        );
                    },

                  icon: Icons.bookmark_border, label: 'Save',
                );
                }
               })
                ,
                GestureDetector(
                  onTap: (){
                    ShowDialog.showCalories(widget.item['totalNutrients'], context);
                  };
                  child: const CircleButton(
                    icon: Icons.monitor_heart_outlined, label: 'Calories',
                  )
                )
                GestureDetector(
                  onTap: (){
                    ShowTable.showTable(context);
                  }
                )
                const CircleButton(
                  icon: Icons.table_chart_outlined, label: 'Unit chart',
                ),
              ],
            ),
            SizedBox(height: h*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Direction', style: TextStyle(fontWeight: FontWeight.bold,fontSize: w*0.06),),
                SizedBox(width: w*0.34,
                child: ElevatedButton(onPressed: () {
                  StartCooking.startCooking(widget.item['url']);
                },
                child: const Text('Start')),
                )
              ],
            ),
          
            SizedBox(height: h*0.02,),
            Container(
              height: h*0.07,
              width: w,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ClipPath(
                      clipper: CustomClipPath(),
                    child: Container(
                      color:  const Color.fromARGB(255, 202, 122, 1),
                      child: Center(
                        child: Text('Ingredients Required',
                        style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.white, fontSize: w*0.05
                        ),
        
                        )
                      ),
                    ),
                  )),
        
        
                  Expanded(
                    flex: 0,
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(' 6\nItems'),
                      ),
                  ))
        
                ],
              ),
            ),
<<<<<<< HEAD
                  SizedBox(height: h * 0.02),
                  SizedBox(
                    
                    height: h * 1.8,
                    child: IngredientList(extendedIngredients: ingredients),
                  ),
            
          ],
        ),
        ),
        ],
            ),
      ),


  )
 }}
=======
            
            SizedBox(
              height = h*1.8,
              child = IngredientList(
                ingredients: widget.item['extendedIngredients'] ?? [],
              ),),
          ],
        ),
        ),
  ),},
  }

>>>>>>> 23c2dc7adf1c9b3078b0be018eac5c0eefc7809a
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368
