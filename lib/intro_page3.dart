import 'package:flutter/material.dart';
class IntroPage3 extends StatefulWidget {
  static const String id = "intro_page3";
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: const Color(0xff02f7da),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Center(
              child: Image(
                height: _size.height*1.1,
                image: AssetImage(
                  "assets/images/3.png",
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "The world of plants",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "BloodySunday",
                  ),
                ),
                SizedBox(height: _size.height*0.7,),
                 Text(
                  "The native range of this species is Tropical Asia. It is a climbing subshrub and grows primarily in the wet tropical biome",
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
