import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '03_onboarding_3.dart';


class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: lightYellow,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: screenWidth*0.0, top: screenHeight*0.0, bottom: screenWidth*0.0),
        child: Column(
          children: [
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.9,
              height: screenHeight*0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      //spreadRadius: 2,
                      // blurRadius: 5,
                      // offset: const Offset(0, 3),
                    ),
                  ]),
              child: Expanded(

                child:  Image.asset("assets/images/onboarding2.png", scale: 3.5, fit: BoxFit.fill, ),


              ),
            ),
            Image.asset("assets/images/onboarding2.png",height: screenHeight*0.1, width: screenWidth*0.9,),
            SizedBox(
              height: screenHeight * 0.09,
            ),
            const Center(
              child: Text(
                "We provide best quality Fruits to your family",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(height: screenHeight*0.05,),
            const Center(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ", style: TextStyle(color: black),),),
            SizedBox(height: screenHeight*0.06,),
            Image.asset("assets/images/indicator2.png", height: 10, width: 90),
            SizedBox(height: screenHeight*0.09,),
            Container(
              padding: EdgeInsets.all(12),
              width: screenWidth * 0.87,
              height: screenWidth * 0.19,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnBoarding3()),
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
