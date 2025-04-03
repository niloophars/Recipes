import 'package:flutter/material.dart';
import 'package:nomnom/components/bottom_nav_bar.dart';
import 'package:nomnom/screens/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController pageController;
  int currentIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController=PageController(initialPage: currentIndex);
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
      bottomNavigationBar: BottomNavBar(onTap: (index) {
        pageController.animateToPage(
          index, 
          duration: Duration(milliseconds: 200), 
          curve: Curves.easeInOut);
          setState(() {
            currentIndex=index;
          });
      },
        SelectedItem: currentIndex),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex=index;
          });
        },
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          // RecipeCategory(),
          Center(child: Text('Page 2'),),
          Center(child: Text('Page 3'),),
          Center(child: Text('Page 4'),),
          // ShoppingScreen(),
        ],
      ),
    );
  }
}