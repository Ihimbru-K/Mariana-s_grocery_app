import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.orange,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/onboarding1"),
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
            const Center(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ", style: TextStyle(color: Colors.grey),),),
            SizedBox(height: screenHeight*0.08,),
            Image.asset("assets/images/indicator"),

          ],
        ),
      ),
    );
  }
}
