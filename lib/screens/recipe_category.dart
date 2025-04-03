import 'package:flutter/material.dart';
import 'package:nomnom/constants/category_list.dart';
import 'package:nomnom/components/recipe_category_view.dart';

class RecipeCategoryScreen extends StatelessWidget {
  final List<Map<String, String>> categories = [];

  const RecipeCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
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
          ],
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
        ),
      ),
    );
  }
}
