import 'package:flutter/material.dart';
import 'package:grocery_app/inner_screens/categories/07_categories.dart';
import 'package:grocery_app/inner_screens/deals_and_shopping/deals/deals.dart';
import 'package:grocery_app/widgets/root_screen.dart';

import '../../constants/colors.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  int currentscreen = 0;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.height;
    const String name = "Rafatul Islam";
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgcolor,
        leading: Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ Column(children: const [ SizedBox(height: 5,),
            Text("Good morning", style: TextStyle(fontSize: 13, color: dgrey),), SizedBox(height: 1,), Text("$name", style: TextStyle(fontSize: 16, color: black, fontWeight: FontWeight.bold),),
          ],),


          ],),

        actions:  [
         IconButton(onPressed: (){}, icon:Image.asset("assets/images/notification.png"))
          ],
      ),
      body: SingleChildScrollView(child: Container(
        padding: EdgeInsets.only(left: screenWidth*0.042),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.35,
                    height: screenHeight*0.2,
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

                      child:  Image.asset("assets/images/reciperec.png", scale: 3.5, fit: BoxFit.fill, ),


                    ),
                  ),
                  SizedBox(width: screenWidth*0.027,),
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.35,
                    height: screenHeight*0.2,
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

                      child:  Image.asset("assets/images/reciperec.png", scale: 3.5, fit: BoxFit.fill, ),


                    ),
                  ),


                ],
              ),
            ),
            SizedBox(height:  screenHeight*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Categories", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),), IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));}, icon: Icon(Icons.arrow_forward, color: black,))
              ],),
            SizedBox(height:  screenHeight*0.03,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.165,
                    height: screenHeight*0.123,
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

                      child:  Image.asset("assets/images/fruits.png", scale: 2, fit: BoxFit.fill, ),


                    ),
                  ),
                  SizedBox(width: screenWidth*0.015,),
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.165,
                    height: screenHeight*0.123,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Center(

                      child:  Image.asset("assets/images/fruits.png", scale: 2, fit: BoxFit.fill, ),


                    ),
                  ),
                  SizedBox(width: screenWidth*0.015,),
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.165,
                    height: screenHeight*0.123,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Center(

                      child:  Image.asset("assets/images/fruits.png", scale: 2, fit: BoxFit.fill, ),


                    ),
                  ),
                  SizedBox(width: screenWidth*0.015,),
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.165,
                    height: screenHeight*0.123,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Center(

                      child:  Image.asset("assets/images/fruits.png", scale: 2, fit: BoxFit.fill, ),


                    ),
                  ),
                  SizedBox(width: screenWidth*0.015,),
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.165,
                    height: screenHeight*0.123,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Center(

                      child:  Image.asset("assets/images/fruits.png", scale: 2, fit: BoxFit.fill, ),


                    ),
                  ),
                  SizedBox(width: screenWidth*0.015,),
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.165,
                    height: screenHeight*0.123,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 12,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Center(

                      child:  Image.asset("assets/images/fruits.png", scale: 2, fit: BoxFit.fill, ),


                    ),
                  ),
                  SizedBox(width: screenWidth*0.015,),
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.165,
                    height: screenHeight*0.123,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 12,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Center(

                      child:  Image.asset("assets/images/fruits.png", scale: 2, fit: BoxFit.fill, ),


                    ),
                  ),
                  SizedBox(width: screenWidth*0.015,),
                  Container(
                    //padding: EdgeInsets.all(3),
                    width: screenWidth * 0.165,
                    height: screenHeight*0.123,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 12,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Center(

                      child:  Image.asset("assets/images/fruits.png", scale: 2, fit: BoxFit.fill, ),


                    ),
                  ),
                  SizedBox(width: screenWidth*0.015,),


                ],
              ),),

            SizedBox(height:  screenHeight*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Trending Deals", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),), IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Deals()));}, icon: Icon(Icons.arrow_forward, color: black,))
              ],),
            SizedBox(width: screenWidth*0.019,),

            Stack(children: [SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:
                  Row(children: [
                    Column(
                      children: [
                        Container( width: screenWidth * 0.22,
                          height: screenHeight*0.24,
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
                        Container( width: screenWidth * 0.22,
                          height: screenHeight*0.24,
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
                        ),]),



                    SizedBox(width: screenWidth*0.03,),



                    Column(children: [Container( width: screenWidth * 0.22,
                      height: screenHeight*0.24,
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
                      Container( width: screenWidth * 0.22,
                        height: screenHeight*0.24,
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
                  )

            ),],),
            Container(
              padding: EdgeInsets.all(12),
              width: screenWidth * 0.87,
              height: screenWidth * 0.1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Deals()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: const Center(
                  child: Text(
                    "More",
                    style: TextStyle(
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),











          ],
        ),),),

       // bottomNavigationBar: RootScreen(),

    );
  }
}
