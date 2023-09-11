import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class ItemsDeals extends StatefulWidget {
  const ItemsDeals({Key? key}) : super(key: key);

  @override
  State<ItemsDeals> createState() => _ItemsDealsState();
}

class _ItemsDealsState extends State<ItemsDeals> {
  int counter = 0;
  double price = 4.9;
  double rating = 4.5;
  double reviews = 128;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back),),),

      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/girl.png',
              fit: BoxFit.cover,
            ),
          ),
          // Content Widget
          Positioned(
            top: MediaQuery.of(context).size.height * 0.75 -
                MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(children: [Text("Fruits", style: TextStyle(fontSize: screenWidth*0.04,  fontWeight: FontWeight.bold),), Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Text(
                    'Fresh Orange',
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$price", style: TextStyle(color: lightYellow, fontSize: screenWidth*0.04),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (counter > 0) {
                              counter--;
                            }
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: lightYellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "$counter",
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(width: 16),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: lightYellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        const Icon(Icons.star, color: lightYellow,),
                        Text("$rating", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),SizedBox(width:4,),
                        Text("($reviews reviews,)", style: const TextStyle(color: dgrey),)
                      ], ), Row(children: [Image.asset("assets/images/people.png")],)
                  ],),



                ],),



                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: black),
                      ),
                    ),
                    controller:
                        TextEditingController(text: 'rafatul3588@gmail.com'),
                  ),
                ),
                SizedBox(height: 16.0),

                SizedBox(height: screenWidth * 0.032),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: lightYellow, fontSize: screenWidth * 0.04),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                Container(
                  width: screenWidth * 0.4,
                  height: screenWidth * 0.15,
                  child: ElevatedButton(
                    onPressed: () {
                     // Navigator.push(
                      //  context,
                       // MaterialPageRoute(builder: (context) => Home()),
                     // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lightYellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
