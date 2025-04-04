import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool back;
  const CustomAppBar({super.key, required this.title, this.back = false});

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Default app bar height

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: w * 0.06,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.redAccent,
      leading: back ? const BackButton(color: Colors.white) : null,
    );
  }
}
