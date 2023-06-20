import 'package:flutter/material.dart';
class IntroPage5 extends StatefulWidget {
  static const String id = "intro_page5";
  const IntroPage5({Key? key}) : super(key: key);

  @override
  State<IntroPage5> createState() => _IntroPage5State();
}

class _IntroPage5State extends State<IntroPage5> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: const Color(0xfff702df),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Center(
              child: Image(
                height: _size.height*1.1,
                image: AssetImage(
                  "assets/images/5.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Plants are life",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: "BloodySunday",
                    ),
                  ),
                  SizedBox(height: _size.height*0.7,),
                  Text(
                    "The ancestors of land plants evolved in water. An algal scum formed on the land 1,200 million years ago, but it was not until the Ordovician, around 450 million years ago,",
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
