import 'package:flutter/material.dart';
import 'package:grocery_app/on_boarding/04_onboarding_04.dart';
import 'package:grocery_app/on_boarding/sign_in/05_signin.dart';

import '../constants/colors.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: screenWidth * 0.0,
          top: screenHeight * 0.01,
          bottom: screenWidth * 0.0,
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/onboarding3.png",
              height: screenHeight * 0.25,
              width: screenWidth * 0.9,
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            const Center(
              child: Text(
                "Fast and responsible",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            const Center(
              child: Text(
                "delivery by our courier",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            const Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur",
                style: TextStyle(color: black, fontSize: 16),
              ),
            ),
            const Center(
              child: Text(
                "adipiscing elit, sed do eiusmod tempor ",
                style: TextStyle(color: black, fontSize: 16),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Image.asset("assets/images/indicator3.png", height: 10, width: 90),
            SizedBox(height: screenHeight * 0.06),
            Container(
              padding: EdgeInsets.all(12),
              width: screenWidth * 0.87,
              height: screenWidth * 0.19,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "CREATE AN ACCOUNT",
                    style: TextStyle(
                      fontSize: 16,
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: screenWidth * 0.87,
              height: screenWidth * 0.19,
              child: ElevatedButton(
                onPressed: () {
                  // Add login functionality here
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn(),));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgcolor,
                  side: const BorderSide(color: black, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 16,
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}