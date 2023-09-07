
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/on_boarding/01_onboarding_1.dart';

class Onboarding0 extends StatefulWidget {
  const Onboarding0({Key? key}) : super(key: key);

  @override
  State<Onboarding0> createState() => _Onboarding0State();
}

class _Onboarding0State extends State<Onboarding0> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 3000), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoarding1()),); });
  }
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: screenHeight*0.31),
      color: lightYellow,
      child: Column(
        children: [
          Image.asset("assets/images/onboarding0.png", height: 400, width: 200,)


        ],
      ),
    );
  }
}
