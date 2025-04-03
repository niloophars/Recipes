import 'package:flutter/material.dart';
import 'package:nomnom/screens/onboarding.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),

     
    );
  }
}
