import 'package:flutter/material.dart';
import 'package:nomnom/components/custom_app_bar.dart';
import 'package:nomnom/constants/constant_function.dart';

class AllRecipe extends StatelessWidget {
  final String recipe;
  const AllRecipe({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width; // Used for layout calculations
    return Scaffold(
      appBar: CustomAppBar(title: recipe, back: true),
      body: FutureBuilder(
        future: ConstantFunction.getResponse(recipe),
        // Ensure this function is defined and returns a valid Future
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: Text('no data'));
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Padding(
            padding: EdgeInsets.only(
              right: w * .034, // Correctly using 'w'
              left: w * .034,
              top: h * 0.3,
            ),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 10,
                childAspectRatio: 0.6,
              ),
              itemCount: (snapshot.data as List<dynamic>?)?.length ??
                  0, // Cast snapshot.data to List
              itemBuilder: (context, index) {
                Map<String, dynamic> snap =
                    (snapshot.data as List<Map<String, dynamic>>)[index];
                int time = snap['totalTime']?.toInt() ?? 0;
                return Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Stack(
                          children: [
                            // GestureDetector(
                            //   onTap: (){
                            //     Navigator.pushNamed(
                            //       context,
                            //       MaterialPageRoute(builder: (context) => RecipeDetails(recipe: snap['title'])),
                            //     );}
                            // ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(snap['image']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 7,
                              left: 15,
                              child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "${time.toString()} min",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 8),
                        child: Text(
                          snap['label'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: w * .03,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
