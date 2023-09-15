
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class ShoppingAddress extends StatefulWidget {

  const ShoppingAddress({Key? key}) : super(key: key);

  @override
  State<ShoppingAddress> createState() => _ShoppingAddressState();
}

class _ShoppingAddressState extends State<ShoppingAddress> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight =   MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        elevation: 1,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back, color: white,),),
        title: const Text("Shopping Address", style:  TextStyle(color: white, fontSize: 23),),
      ),

      body: Container(
        padding: EdgeInsets.only(left: screenWidth*0.0, top: screenHeight*0.01, bottom: screenWidth*0.0),
        child: Column(children: const [

      ],),),
    );
  }
}
