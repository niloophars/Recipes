import 'package:flutter/material.dart';
import 'package:nomnom/constants/constant_function.dart';
import 'package:nomnom/screens/detail_screen.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return  DefaultTabController(
      length: 4, child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: h*0.05,
            child: TabBar(
              unselectedLabelColor: const Color.fromARGB(255, 202, 122, 1),
              labelColor: Colors.white,
              dividerColor: Colors.white,
              indicator: BoxDecoration(
                color: const Color.fromARGB(255, 202, 122, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              labelPadding: EdgeInsets.symmetric(horizontal: w*0.012 ),

              tabs: [
                TabItem(title: 'Breakfast'),
                TabItem(title: 'Lunch'),
                TabItem(title: 'Dinner'),
                TabItem(title: 'Quick'),

              ]
            ),
          ),
          SizedBox(height: h*0.02,),
          SizedBox(
            height: h*0.5,
            child: TabBarView(
              children: [
                HomeTabBarView(recipe: 'breakfast'),
                HomeTabBarView(recipe: 'lunch'),
                HomeTabBarView(recipe: 'dinner'),
                HomeTabBarView(recipe: 'quick'),
              ],
            ),
          )

        ],
      )
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;
  const TabItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 202, 122, 1),
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 8),
      child: Center(
        child: Text(title, style: TextStyle(
          fontSize: 9.8
        ),),
      ),
      ),
    );
  }
}

class HomeTabBarView extends StatelessWidget {
  final String recipe;
  const HomeTabBarView({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return  FutureBuilder(
      future: ConstantFunction.getResponse(recipe),
      builder: (context, snapshot) {
        if (snapshot.connectionState==ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
    
      
       else if(!snapshot.hasData) {
          return const Center(
            child: Text('no data'),
          );
        }
//         return  SizedBox(
//           height: h*0.28,
//           child: ListView.separated(
//                   scrollDirection: Axis.vertical,
              
//                   itemBuilder: (context, index) {
//             Map<String, dynamic> snap=snapshot.data![index];
//             // int time=snap['readyInMinutes'].toInt();
//             // int calories=snap['calories'].toInt();
//             return Container(
//               margin: EdgeInsets.only(
//                 right: w*0.02
//               ),
//               width: w*0.5,
//               child: Stack(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         width: w,
//                         height: h*0.17,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           image: DecorationImage(image: NetworkImage(
//                             snap['image']), 
//                             fit: BoxFit.fill
//                           )
//                         ),
//                       ),
//                       SizedBox(
//                         height: h*0.01,
//                       ),
//                       Text(
//                         snap['title'],
//                         style: TextStyle(
//                           fontSize: w*0.035,
//                           fontWeight: FontWeight.bold
//                         ),),
//                         SizedBox(height: h*0.01,),
//                         // Text(" ${time.toString()}", style: TextStyle(
//                         //   fontSize: w*0.03, color: Colors.grey
//                         // ),)
//                     ],
//                   )
//                 ],
//               ),
//             );
//                   },
//                   separatorBuilder: (context, index){
//           return SizedBox(width: 15,);
          
//                   }, 
//                   itemCount: snapshot.data!.length
//                   ),
//         );
//       }
//     );
//   }
// }



        // Pinterest-style layout using GridView
        return GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: w * 0.02), // Add padding only for horizontal space
          shrinkWrap: true,
  // Disable scrolling, because the parent widget controls it
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: w * 0.45, // Width of each grid item (adjust based on screen size)
            mainAxisSpacing: 10, // Vertical space between items
            crossAxisSpacing: 10, // Horizontal space between items
            childAspectRatio: 0.75, // Adjust the aspect ratio (height/width ratio)
          ),
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            Map<String, dynamic> snap = snapshot.data![index];

            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // Ensures that the image fits nicely
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image part of the card
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>
                       DetailScreen(item: snap,)));
                    },
                    
                    child: Container(
                      width: w,
                      height: h * 0.17, // Set fixed height for images (adjust based on your needs)
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          snap['image'],
                          fit: BoxFit.cover, // Ensures the image covers the area without distorting
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  // Title part of the card
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      snap['title'],
                      style: TextStyle(
                        fontSize: w * 0.035,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis, // Ensure long text does not overflow
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
