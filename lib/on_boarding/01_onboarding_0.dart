
import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';

class Onboarding0 extends StatefulWidget {
  const Onboarding0({Key? key}) : super(key: key);

  @override
  State<Onboarding0> createState() => _Onboarding0State();
}

class _Onboarding0State extends State<Onboarding0> {
  @override
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
