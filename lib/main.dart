import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:nomnom/screens/onboarding.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

 

  // await Hive.initFlutter();
  // await Hive.openBox('shopping');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),

     
    );
  }
}
