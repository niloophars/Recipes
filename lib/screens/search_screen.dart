import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super,key});

  @override
  Widget build(BuildContext context){
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomerAppBar(title:'Search',back: false,
      body:padding()
    )
  }
  ];
}