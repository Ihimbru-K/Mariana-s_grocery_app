import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class Deals extends StatefulWidget {
  const Deals({Key? key}) : super(key: key);

  @override
  State<Deals> createState() => _DealsState();
}

class _DealsState extends State<Deals> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightYellow,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color:white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Image.asset("assets/images/filter.png"),
            onPressed: () {
              // Perform search action here
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(
            child: Column(
              children: const [
                Text(
                  "Fruits Category",
                  style: TextStyle(
                    color: white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text("87 items"),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: white,
        elevation: 2.0,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search here",
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: const Icon(Icons.search),
                ),
              ),
              SizedBox(height: screenHeight*0.025,),
              Row(
                children: [
                  Column(
                    children: [
                      Container( width: screenWidth * 0.256,
                        height: screenHeight*0.33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //spreadRadius: 2,
                                // blurRadius: 5,
                                // offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Expanded(

                          child:  Image.asset("assets/images/avocado.png", scale: 3.5, fit: BoxFit.fill, ),


                        ),),
                      SizedBox(height: screenWidth*0.03,),
                      Container( width: screenWidth * 0.256,
                        height: screenHeight*0.33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //spreadRadius: 2,
                                // blurRadius: 5,
                                // offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Expanded(

                          child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                        ),
                      ),
                      SizedBox(height: screenWidth*0.03),
                      Container( width: screenWidth * 0.256,
                        height: screenHeight*0.33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //spreadRadius: 2,
                                // blurRadius: 5,
                                // offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Expanded(

                          child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                        ),
                      ),
                      SizedBox(height: screenWidth*0.03),
                      Container( width: screenWidth * 0.256,
                        height: screenHeight*0.33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //spreadRadius: 2,
                                // blurRadius: 5,
                                // offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Expanded(

                          child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                        ),
                      ),
                      SizedBox(height: screenWidth*0.03),
                      Container( width: screenWidth * 0.256,
                        height: screenHeight*0.33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //spreadRadius: 2,
                                // blurRadius: 5,
                                // offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Expanded(

                          child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                        ),
                      ),
                      SizedBox(height: screenWidth*0.03),
                      Container( width: screenWidth * 0.256,
                        height: screenHeight*0.33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //spreadRadius: 2,
                                // blurRadius: 5,
                                // offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Expanded(

                          child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                        ),
                      ),
                      SizedBox(height: screenWidth*0.03),
                      Container( width: screenWidth * 0.256,
                        height: screenHeight*0.33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //spreadRadius: 2,
                                // blurRadius: 5,
                                // offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Expanded(

                          child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                        ),
                      ),
                      SizedBox(height: screenWidth*0.03),
                    ],
                  ),


                  SizedBox(width: screenWidth*0.015,),



                  Column(children: [
                    Container( width: screenWidth * 0.256,
                      height: screenHeight*0.33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              //spreadRadius: 2,
                              // blurRadius: 5,
                              // offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Expanded(

                        child:  Image.asset("assets/images/tomato.png", scale: 3.5, fit: BoxFit.fill, ),


                      ),


                    ),
                    SizedBox(height: screenWidth*0.03),
                    Container( width: screenWidth * 0.256,
                      height: screenHeight*0.33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              //spreadRadius: 2,
                              // blurRadius: 5,
                              // offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Expanded(

                        child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                      ),
                    ),
                    SizedBox(height: screenWidth*0.03),
                    Container( width: screenWidth * 0.256,
                      height: screenHeight*0.33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              //spreadRadius: 2,
                              // blurRadius: 5,
                              // offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Expanded(

                        child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                      ),
                    ),
                    SizedBox(height: screenWidth*0.03),
                    Container( width: screenWidth * 0.256,
                      height: screenHeight*0.33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              //spreadRadius: 2,
                              // blurRadius: 5,
                              // offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Expanded(

                        child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                      ),
                    ),
                    SizedBox(height: screenWidth*0.03),

                    Container( width: screenWidth * 0.256,
                      height: screenHeight*0.33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              //spreadRadius: 2,
                              // blurRadius: 5,
                              // offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Expanded(

                        child:  Image.asset("assets/images/grapes.png", scale: 3.5, fit: BoxFit.fill, ),


                      ),
                    ),
                  ],),




                ],
              ),



            ],
          ),
        ),
      ),),
    );
  }
}