import 'package:flutter/material.dart';
import 'package:flutter_skeuomorphic_button/home_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xff393631),
        primaryColor:const Color(0xff2d2a23)
      ),
      home: const HomeScreen(),
    );
  }
}
