import 'dart:ffi';

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

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(icon : const Icon(
          Icons.arrow_back,
          color: lightYellow,
        ), onPressed: (){Navigator.pop(context);},) ,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: screenWidth*0.0, top: screenHeight*0.08, bottom: screenWidth*0.0),
        child: Column(
          children: [
            Image.asset("assets/images/onboarding1.png", height: screenHeight*0.32,),
            SizedBox(
              height: screenHeight * 0.07,
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
            SizedBox(height: screenHeight*0.03,),
            const Center(child: Text("Grocery application", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),),
            SizedBox(height: screenHeight*0.03,),
            const Center(child: Text("Lorem ipsum dolor sit amet, consectetur", style: TextStyle(color: dgrey),),),
            const Center(child: Text("adipiscing elit, sed do eiusmod tempor", style: TextStyle(color: dgrey),),),
            SizedBox(height: screenHeight*0.04,),
            Image.asset("assets/images/indicator.png", height: 10, width: 90,),
            SizedBox(height: screenHeight*0.06,),
            Container(
              padding: const EdgeInsets.all(12),
              width: screenWidth * 0.87,
              height: screenWidth * 0.19,
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
                      borderRadius: BorderRadius.circular(30)),
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
