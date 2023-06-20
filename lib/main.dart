import 'package:flutter/material.dart';
import 'package:intropage_with_indicator_controller/my_liquid_swipe_page.dart';

import 'intro_page1.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';
import 'intro_page4.dart';
import 'intro_page5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const MyLiquidSwipePage(),
      routes: {
        IntroPage1.id:(context)=> const IntroPage1(),
        IntroPage2.id:(context)=> const IntroPage2(),
        IntroPage3.id:(context)=> const IntroPage3(),
        IntroPage4.id:(context)=> const IntroPage4(),
        IntroPage5.id:(context)=> const IntroPage5(),
        MyLiquidSwipePage.id:(context)=> const MyLiquidSwipePage(),
      },
    );
  }
}