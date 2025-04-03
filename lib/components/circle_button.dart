import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const CircleButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
   final h=MediaQuery.of(context).size.height;
   final w=MediaQuery.of(context).size.width;
    return Column(
      children: [
        CircleAvatar(
          radius: w*0.06,
          backgroundColor: const Color.fromARGB(255, 202, 122, 1),
          child: Center(
            child: Icon(icon, color: Colors.white,),
          ),
        ),
        SizedBox(height: h*0.005,),
        Text(label)
      ],
    );
  }
}