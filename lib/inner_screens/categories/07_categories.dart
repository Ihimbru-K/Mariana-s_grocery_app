import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      title: const Text("Categories", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Row(children: [
          Column(children: [
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.234,
              height: screenHeight*0.234,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(3, 3),
                    ),
                  ]),
              child: Center(

                child:  Image.asset("assets/images/fruits2.png", scale: 2, fit: BoxFit.fill, ),


              ),
            ),
            SizedBox(height: screenWidth*0.0),

          ],),SizedBox(width: screenWidth*0.015,),Column(children: [],)

        ],),

      ),
    );
  }
}
