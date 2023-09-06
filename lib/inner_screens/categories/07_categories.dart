import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/root_screen.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentscreen = 1;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
      title: const Text("Categories", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: screenWidth*0.14, right: screenWidth*0.092, top:screenWidth*0.035,),
        child: Row(children: [
          Column(children: [
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.315,
              height: screenWidth*0.315,
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

            SizedBox(height: screenWidth*0.03),
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.315,
              height: screenWidth*0.315,
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
            SizedBox(height: screenWidth*0.03),
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.315,
              height: screenWidth*0.315,
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

            SizedBox(height: screenWidth*0.03),
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.315,
              height: screenWidth*0.315,
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


          ],),SizedBox(width: screenWidth*0.08,),Column(children: [
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.315,
              height: screenWidth*0.315,
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

            SizedBox(height: screenWidth*0.03),
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.315,
              height: screenWidth*0.315,
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
            SizedBox(height: screenWidth*0.03),
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.315,
              height: screenWidth*0.315,
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

            SizedBox(height: screenWidth*0.03),
            Container(
              //padding: EdgeInsets.all(3),
              width: screenWidth * 0.315,
              height: screenWidth*0.315,
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
          ],)

        ],),

      ),
      bottomNavigationBar: RootScreen(),
    );
  }
}
