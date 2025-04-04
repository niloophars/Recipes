import 'package:flutter/material.dart';
import 'package:nomnom/components/bottom_nav_bar.dart';
import 'package:nomnom/screens/home_screen.dart';
<<<<<<< HEAD
import 'package:nomnom/screens/recipe_category.dart';
import 'package:nomnom/screens/search_screen.dart';
// import 'package:nomnom/screens/shopping_screen.dart';
=======
import 'package:nomnom/screens/shopping_screen.dart'; // Ensure this file contains the ShoppingScreen widget
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
  // TODO: implement initState,
    super.initState();

    pageController = PageController(initialPage: currentIndex);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      bottomNavigationBar: BottomNavBar(onTap: (index) {
        pageController.animateToPage(
          index, 
          duration: Duration(milliseconds: 200), 
          curve: Curves.easeInOut);
          setState(() {
            currentIndex=index;
          });
      },
        selectedItem: currentIndex),
=======
      bottomNavigationBar: BottomNavBar(
          onTap: (index) {
            pageController.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
            setState(() {
              currentIndex = index;
            });
          },
          SelectedItem: currentIndex),
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          RecipeCategory(),
<<<<<<< HEAD
          SearchScreen(),
          Center(child: Text('Page 4'),),
          // ShoppingScreen(),
=======
          Center(
            child: Text('Page 3'),
          ),
<<<<<<< HEAD
          SavedScreen(),
          ShoppingScreen(), // Ensure ShoppingScreen is implemented in the imported file
=======
          ShoppingScreen(), // Ensure ShoppingScreen is defined in the imported file
          ShoppingScreen(),
>>>>>>> ff2b898a52c355d7d4c5a4dba0391119c50d5e49
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368
        ],
      ),
    );
  }
}
