
import 'package:flutter/material.dart';

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
      padding: EdgeInsets.only(top: screenHeight*0.65),
      color: Colors.orange,
      child: Column(
        children: [
          Image.asset("assets/images/onboarding0.png")


        ],
      ),
    );
  }
}
