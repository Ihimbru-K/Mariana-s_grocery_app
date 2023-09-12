import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../others/discussions.dart';
import '../shopping/write_reviews.dart';

class ItemsDeals extends StatefulWidget {
  const ItemsDeals({Key? key}) : super(key: key);

  @override
  State<ItemsDeals> createState() => _ItemsDealsState();
}

class _ItemsDealsState extends State<ItemsDeals> {
  void navigateToPage(int index) {
    if (index == 0) {
      // Do nothing if the "Description" heading is tapped
      return;
    }

    Widget page;
    if (index == 1) {
      page = WriteReviews();
    } else if (index == 2) {
      page = Discussions();
    } else {
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
  final List<Heading> headings = [
    Heading('Description'),
    Heading('Reviews'),
    Heading('Discussions'),
  ];
  int selectedHeadingIndex = 0;
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
            top: MediaQuery.of(context).size.height * 0.45 -
                MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.001,
            right: MediaQuery.of(context).size.width * 0.001,
            child: Container(
              decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30.0), // Round the top corners
                ),
              ),
              child: Column(
             // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Fruits", style: TextStyle(fontSize: screenWidth*0.04,  fontWeight: FontWeight.bold),), Padding(
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
                        Text("$price", style: TextStyle(color: lightYellow, fontSize: 25),),
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
                                child: const Center(
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
                            const SizedBox(width: 16),
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
                                child: const Center(
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
                        ], ), Row(children: [Image.asset("assets/images/people.png", height: 100, width: 100,)],)
                      ],),



                  ],),
                Container(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: headings.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedHeadingIndex = index;
                            navigateToPage(index);
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: index == selectedHeadingIndex
                                    ? black
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                          ),
                          child: Text(
                            headings[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: index == selectedHeadingIndex
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Expanded(
                // child: selectedHeadingIndex == 0
                // ? DescriptionPage()
                // : Container(),
                // ),
                Center(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',"),),
             Container(height: screenHeight*0.2, child:  Row(children: [

    GestureDetector(onTap: (){} , child:Image.asset("assets/images/heart.png", height: 75, width: 150,)) ,SizedBox(width: screenWidth*0.07,), GestureDetector(onTap: (){} , child:Image.asset("assets/images/buttonc.png", height: 100, width: 200,)  ,),

             ],),)


              ],
            ),)

          ),
        ],
      ),
    );
  }
}
class Heading {
  final String title;

  Heading(this.title);
}

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Description',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
