
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
        centerTitle: true,
        elevation: 1,
        leading: const Icon(Icons.arrow_back, color: white,),
        title: const Text("Payment Methods", style: TextStyle(color: white, fontSize: 24),),
      ),
      body: Container(
        padding: EdgeInsets.only(left: screenWidth*0.0, top: screenHeight*0.01, bottom: screenWidth*0.0),
        child: Column(children: const [
          Placeholder()


        ],),
      ),

    );
  }
}
