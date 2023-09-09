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

      body: ,
    );
  }
}
