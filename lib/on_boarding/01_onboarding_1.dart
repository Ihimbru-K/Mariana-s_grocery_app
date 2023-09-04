import 'package:flutter/material.dart';
import 'package:grocery_app/on_boarding/02_onboarding_2.dart';

import '../constants/colors.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: lightYellow,
      appBar: AppBar(
        backgroundColor: lightYellow,
        leading: const Icon(
          Icons.arrow_back,
          color: lightYellow,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/onboarding1.png"),
            SizedBox(
              height: screenHeight * 0.09,
            ),
            const Center(
              child: Text(
                "Welcome to Fresh Fruits",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(height: screenHeight*0.05,),
            const Center(child: Text("Grocery application", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),),
            SizedBox(height: screenHeight*0.05,),
            const Center(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ", style: TextStyle(color: dgrey),),),
            SizedBox(height: screenHeight*0.08,),
            Image.asset("assets/images/indicator.png"),
            SizedBox(height: screenHeight*0.09,),
            Container(
              padding: EdgeInsets.all(12),
              width: screenWidth * 0.87,
              height: screenWidth * 0.17,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnBoarding2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: lightYellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 16,
                        color: black,
                        fontWeight: FontWeight.bold),
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
