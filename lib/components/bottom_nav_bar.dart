import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class BottomNavBar extends StatefulWidget {
  final int selectedItem;
  final Function(int) onTap;

  const BottomNavBar({super.key, required this.onTap, required this.selectedItem});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey[100],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w*0.015, vertical: h*0.05),
        child: GNav(
          gap: 10,
          tabBorderRadius: 100,
          backgroundColor: const Color.fromARGB(255, 240, 172, 108),
          activeColor: const Color.fromARGB(255, 5, 0, 0),
          color: const Color.fromARGB(255, 0, 0, 0),
          tabBackgroundGradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 241, 218, 134),
              const Color.fromARGB(255, 204, 80, 3)
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight
          ),
          
          iconSize: 35,
          textSize: 18,
          padding: EdgeInsets.symmetric(
            horizontal: w*0.01,
         
            ),
          tabs: [
            GButton(icon: CupertinoIcons.home, text: 'Home',),
            GButton(icon: Icons.category, text: 'Categories',),
            GButton(icon: CupertinoIcons.search, text: 'Search',),
            GButton(icon: CupertinoIcons.bookmark_solid, text: 'Saved',),
            GButton(icon: CupertinoIcons.shopping_cart, text: 'Saved',),
          ],
          onTabChange: widget.onTap,
          selectedIndex: 0,
          
        ),
      ),
    );
  }
}