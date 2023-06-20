import 'package:flutter/material.dart';
class IntroPage4 extends StatefulWidget {
  static const String id = "intro_page4";
  const IntroPage4({Key? key}) : super(key: key);

  @override
  State<IntroPage4> createState() => _IntroPage4State();
}

class _IntroPage4State extends State<IntroPage4> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffa102f7),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Center(
              child: Image(
                height: _size.height*1.1,
                image: AssetImage(
                  "assets/images/4.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "About types of flowers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: "BloodySunday",
                    ),
                  ),
                  SizedBox(height: _size.height*0.7,),
                  Text(
                    "Finding the right flowers for your home or garden can be very challenging. Not only do you have to think about seasonality",
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
            ),
          ],
        ),
      ),
    );
  }
}
