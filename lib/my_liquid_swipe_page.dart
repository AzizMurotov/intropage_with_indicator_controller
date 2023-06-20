import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'intro_page1.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';
import 'intro_page4.dart';
import 'intro_page5.dart';
class MyLiquidSwipePage extends StatefulWidget {
  static const String id = "my_liquid_swipe_page";
  const MyLiquidSwipePage({Key? key}) : super(key: key);

  @override
  State<MyLiquidSwipePage> createState() => _MyLiquidSwipePageState();
}

class _MyLiquidSwipePageState extends State<MyLiquidSwipePage> {
 int _currentIndex = 0;
 late PageController _pageController;
  List<Widget> _pages = [
    const IntroPage1(),
    const IntroPage2(),
    const IntroPage3(),
    const IntroPage4(),
    const IntroPage5(),
  ];
  @override
  Widget build(BuildContext context) {
    bool isActivits = true;
    return Stack(
      children: [
      LiquidSwipe(
      pages: _pages,
      slideIconWidget:  const Icon(
        Icons.arrow_back_ios,
        size: 30,
      ),
      positionSlideIcon: 0.7,
      enableSideReveal: true,
      waveType: WaveType.liquidReveal,
      //fullTransitionValue: 770
      enableLoop: true,

    ),
        _indecator(true),
      ],
    );
  }
  Widget _indecator(bool isActivite){
    return AnimatedContainer(duration: Duration(milliseconds: 300),
      height: 6,
      width: isActivite?30:6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
  List <Widget> _buildIndecator(){
    List<Widget> indecators = [];
    for(int i=0; i<3; i++){
      if(_currentIndex==i){
        indecators.add(_indecator(true));
      } else{
        indecators.add(_indecator(false));
      }
    }
    return indecators;
  }
}
