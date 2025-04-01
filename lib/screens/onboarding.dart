import 'package:flutter/material.dart';
import 'package:nomnom/constants/images_path.dart';
import 'package:nomnom/screens/home.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SizedBox(
        height: h,
        width: w,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: h*.79,
                width: w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImagesPath.onBoarding,),
                    fit: BoxFit.cover
                  )
                ),
              )
            ),
            Center(
              child: Image.asset(ImagesPath.onBoardingTitle),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: h*0.243,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: h*0.032),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Nom Nom", 
                      style: TextStyle(
                        fontSize: w*0.06, 

                        fontWeight: FontWeight.w600 ,
                      ),),
                      SizedBox(height: h*0.01,),
                      Text("Cook the food of your thought!",
                      style: TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.w300
                      ),),
                      SizedBox(height: h*0.032,),
                      SizedBox(
                        width: w,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                             MaterialPageRoute(
                              builder: (context)=> Home()));
                          },
                           child: Text(
                            "Get Started", 
                            style: TextStyle(
                            color: Colors.black, 
                            fontWeight: FontWeight.bold
                           ),)),
                      )

                    ],
                  ),
                ),
                ),

              ))
          ],
        ),
      ),
    );
  }
}