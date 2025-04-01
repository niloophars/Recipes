import 'package:flutter/material.dart';
import 'package:nomnom/components/home_app_bar.dart';
import 'package:nomnom/components/tab_bar_widget.dart';
import 'package:nomnom/components/text_field_widget.dart';
import 'package:nomnom/constants/images_path.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SizedBox(
                height: h*0.022,
              ),
              TextFieldWidget(),
              SizedBox(
                height: h*0.022,
              ),
              Container(
                height: h*0.25,
                width: w,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImagesPath.explore), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(height: h*0.023,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

              ),
              SizedBox(height: h*0.022,),
              
              TabBarWidget()
              
            ],
          ),
        ),
      )),
    );
  }
}