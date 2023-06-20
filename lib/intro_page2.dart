import 'package:flutter/material.dart';
class IntroPage2 extends StatefulWidget {
  static const String id = "intro_page2";
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff02f799),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
             Center(
              child: Image(
                height: _size.height*1.1,
                image: AssetImage(
                  "assets/images/2.png",
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "About the world of flowers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "BloodySunday",
                  ),
                ),
                SizedBox(height: _size.height*0.7,),
                 Text(
                  "This book invites you to travel the world and beyond into fantastical realms, discovering exotic blooms and fantastic flowers along the way",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: _size.height*0.002,
                    fontFamily: "Italic",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
