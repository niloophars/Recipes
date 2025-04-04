import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:nomnom/components/recipe_category_view.dart';
import 'package:nomnom/constants/category_list.dart';
import 'package:nomnom/components/all_recipe.dart';



class RecipeCategory extends StatelessWidget {
  

  const RecipeCategory({super.key});
=======
import 'package:nomnom/constants/category_list.dart';
import 'package:nomnom/components/recipe_category_view.dart';


class RecipeCategoryScreen extends StatelessWidget {
  final List<Map<String, String>> categories = [];

  const RecipeCategoryScreen({super.key});
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
      
               SizedBox(
                height:h*0.05,
               ),
            
               Text("For You", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: w*.045
              ),),
              
              SizedBox(height: h*0.026,),
              SizedBox(
                height: h * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RecipeCategoryView(name:name[0], image: images[0] ),
                    RecipeCategoryView(name:name[1], image: images[1] ),
                    RecipeCategoryView(name:name[2], image: images[2] ),
                    RecipeCategoryView(name:name[3], image: images[3] ),
                  
                  ],
                ),
              ),





              SizedBox(height: h*0.03,),
              Text('For You', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: w*0.045
              ),),


              SizedBox(
                height: h*0.41,
               child: GridView.builder(
                itemCount: categoryImage.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: h*0.008, mainAxisSpacing: w*0.023
                ),
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>AllRecipe(recipe: categories[index])));
                    },
                    child: Container(
                              
                    decoration: BoxDecoration(
                      
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: h*0.07,
                            width: w*0.6,
                            child: Image.asset(categoryImage[index]),
                          ),
                    
                            SizedBox(height: h *0.0001,),
                              Text(categories[index], style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: w*0.029,                           ),),
                          
                        ],
                    
                      ),
                    )),
                  );
                }
                 )
               ),
          
                Text('Your Preference', style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: w*0.042
                ),),
                SizedBox(height: h*0.11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RecipeCategoryView(name: 'Easy', image: images[0]),
                    RecipeCategoryView(name: 'Quick', image: images[1]),
                    RecipeCategoryView(name: 'Veg', image: images[2]),
                    RecipeCategoryView(name: 'Low fat', image: images[3])

                  ],
                ),)
              
          
          
          
          ],
=======
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * .04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
children: [
  SizedBox(height: h * .01),
  SizedBox(
    height: h * .106,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RecipeCategoryView(name: name[0], image: image[0]),
        RecipeCategoryView(name: name[1], image: image[1]),
        RecipeCategoryView(name: name[2], image: image[2]),
      ],
    ),
  ),
  SizedBox(height: h * 0.01),
  Text(
    "For You",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * .055),
  ),
  SizedBox(
    height: h * .45,
    child: GridView.builder(
      itemCount: categoryImage.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: h * .01,
        mainAxisSpacing: w * .021,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: h * .043,
                  width: w * .08,
                  child: Image.asset(categoryImage[index]),
                ),
                SizedBox(height: h * .003),
                Text(
                  categories[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  ),
],
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ), //boxdecoration
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: h * .043,
                          width: w * .08,
                          child: Image.asset(categoryImage[index]),
                        ),

<<<<<<< HEAD
                      SizedBox(height: h*.003,),
                      // Text(categories[index], style:const TextStyle(
                      //   fontWeight: FontWeight.bold,color: Colors.black45
                      // ),),
                 
                      ],
                    ),
                  ),
                 );

                  },
      
     }       
   }          
=======
                        SizedBox(height = h * .003),
                        Text(
                          categories[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368
        ),
      ),
    );
  }
}
<<<<<<< HEAD
               
=======
>>>>>>> a08b2a29083ae13a2f8eace4a7a653906a33a4fa
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368
