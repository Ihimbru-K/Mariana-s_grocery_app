import 'package:flutter/material.dart';

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
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/onboarding3.png"),
            SizedBox(
              height: screenHeight * 0.2,
            ),
            const Center(
              child: Text(
                "Fast and responsibily delivery by our courir ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(height: screenHeight*0.02,),
            const Center(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ", style: TextStyle(color: black),),),
            SizedBox(height: screenHeight*0.08,),
            Container(
              padding: EdgeInsets.all(12),
              width: screenWidth * 0.87,
              height: screenWidth * 0.17,
              child: ElevatedButton(
                onPressed: () {
                 // Navigator.push(
                   // context,
                    //MaterialPageRoute(builder: (context) => const Login()),
                  //);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "CREATE AN ACCOUNT",
                    style: TextStyle(
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenWidth * 0.03,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: screenWidth * 0.87,
              height: screenWidth * 0.17,
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.push(
                   // context,
                   // MaterialPageRoute(
                       // builder: (context) => const PersonalInfo()),
                 // );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgcolor,
                  side: const BorderSide(color: black, width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "Login",
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
