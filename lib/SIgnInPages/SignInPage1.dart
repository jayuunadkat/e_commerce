import 'package:flutter/material.dart';

class SignInPage1 extends StatefulWidget {
  SignInPage1();

  @override
  State<SignInPage1> createState() => _SignInPage1State();
}

class _SignInPage1State extends State<SignInPage1> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Container(
              height: 0.278325 * screenHeight,
              width: screenWidth,
              margin: EdgeInsets.only(top: 0, right: 0, left: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                color: Color.fromRGBO(123, 207, 233, 1),
              ),
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.0738916,
                      width: screenWidth,
                      // margin: EdgeInsets.only(top: screenHeight*0.033),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: screenWidth * 0.07),
                          alignment: Alignment.centerRight,
                          width: screenWidth / 3,
                          child: Text(
                            "SIGN UP",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(
                      top: screenHeight * 0.0455566,
                      right: screenWidth * 0.6476,
                      // left: screenWidth * 0.08
                    ),
                    child: Text(
                      "Sign in",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenHeight * 0.0123152,
                      right: 0.085333 * screenWidth,
                      left: 0.0777 * screenWidth),
                  child: Text(
                    "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Integer maximus accumsan erat id facilisis.",
                    style: TextStyle(fontSize: 14, color: Colors.white,letterSpacing: 2),
                    textAlign: TextAlign.left,
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
