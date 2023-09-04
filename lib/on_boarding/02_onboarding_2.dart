import 'package:flutter/material.dart';

import '../constants/colors.dart';


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
            Image.asset("assets/images/onboarding2.png"),
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
            SizedBox(height: screenHeight*0.08,),
            Image.asset("assets/images/indicator2.png"),
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
