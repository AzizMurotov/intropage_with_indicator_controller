import 'package:flutter/material.dart';

class IntroPage1 extends StatefulWidget {
  static const String id = "intro_page";

  const IntroPage1({Key? key}) : super(key: key);

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: const Color(0xff00001a),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Image(
              image: AssetImage(
                "assets/images/1.png",
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bio is about life",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "BloodySunday",
                  ),
                ),
                SizedBox(height: _size.height*0.7,),
                Text(
                  "The Greek root word bio means ‘life,’ and gives rise mostly to words from the realm of the ‘life’ sciences.",
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
