import 'package:flutter/material.dart';
import 'package:e_commerce/onBoardingPages/onBoardingPage2.dart';

class onBoardingPage1 extends StatefulWidget {
  onBoardingPage1();

  @override
  State<onBoardingPage1> createState() => _onBoardingPage1State();
}

class _onBoardingPage1State extends State<onBoardingPage1> {
  List myImages = [
    "myImage/onBoardingPage_1/illustration.png",
    "myImage/onBoardingPage_1/slide1.png"
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: Color(0xffffffff),
        child: Column(
          children: [
            //Illustration Container
            Container(
              color: Color(0xffffffff),
              height: screenHeight * 0.28666,
              width: screenWidth * 0.70666,
              child: Image.asset(myImages[0]),
              margin: EdgeInsets.only(
                left: 0.17666 * screenWidth,
                top: 0.15024 * screenHeight,
                right: 0.17666 * screenWidth,
              ),
            ),
            Container(
              color: Color(0xffffffff),
              width: screenWidth * 0.53066,
              height: screenHeight * 0.02709,
              margin: EdgeInsets.only(
                  top: screenHeight * 0.09376,
                  left: screenWidth * 0.2346,
                  right: screenWidth * 0.2346),
              child: Text(
                "SHOPPING FROM HOME",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Color(0xffffffff),
              width: screenWidth * 0.744,
              height: screenHeight * 0.09359,
              margin: EdgeInsets.only(
                  top: screenHeight * 0.07512,
                  left: screenWidth * 0.141333,
                  right: screenWidth * 0.141333),
              child: Text(
                "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Integer maximus accumsan erat id facilisis.",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: screenHeight * 0.007389,
              width: screenWidth * 0.17333,
              margin: EdgeInsets.only(
                  top: screenHeight * 0.055650,
                  left: 0.41333 * screenWidth,
                  right: 0.41333 * screenWidth),
              child: Image.asset(myImages[1]),
            ),
            Row(
              children: [
                Container(
                    width: 0.0906666 * screenWidth,
                    height: 0.01970 * screenHeight,
                    margin: EdgeInsets.only(
                      // right: 0.8426666 * screenWidth,
                      left: 0.0666666 * screenWidth,
                      top: 0.059162 * screenHeight,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Text(
                          "SKIP",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(172, 186, 195, 1)),
                        ),
                      ),
                    )),
                Container(

                    width: 0.184729 * screenWidth,
                    height: 0.0738916 * screenHeight,
                    margin: EdgeInsets.only(
                      left: 0.522666 * screenWidth,
                      top: 0.059162 * screenHeight,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return onBoardingPage2();
                        },));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(18, 104, 129, 1),
                            borderRadius: BorderRadius.all(
                                Radius.circular(0.00985 * screenHeight))),
                        alignment: Alignment.center,

                        child: Text(
                          "NEXT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(255, 255, 255, 1.0)),
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
