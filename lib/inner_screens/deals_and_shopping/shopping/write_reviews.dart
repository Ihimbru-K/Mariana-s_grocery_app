import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';



class WriteReviews extends StatefulWidget {
  const WriteReviews({Key? key}) : super(key: key);

  @override
  State<WriteReviews> createState() => _WriteReviewsState();
}

class _WriteReviewsState extends State<WriteReviews> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(leading: const CircleAvatar(
        //radius: screenWidth * 0.024,
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.close,
          color: black,
        ),
      ),
      title: Text("Write Reviews"),
        centerTitle: true,

      ),

      body: Container(
        child: Column(children:  [

            const Center(child: Text("Tell Us to Improve", style: TextStyle(color: black, fontSize: 28, fontWeight: FontWeight.bold),),),

          SizedBox(height: screenHeight*0.03,),
          const Center(child: Text("Lorem ipsum dolor sit amet, consectetur", style: TextStyle(color: black,fontSize: 16),),),
          const Center(child: Text("adipiscing elit, sed do eiusmod tempor ", style: TextStyle(color: black,fontSize: 16),),),
          gi

        ],),
      ),
    );
  }
}
