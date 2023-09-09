import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';

class WriteReviews extends StatefulWidget {
  const WriteReviews({Key? key}) : super(key: key);

  @override
  State<WriteReviews> createState() => _WriteReviewsState();
}

class _WriteReviewsState extends State<WriteReviews> {
  int selectedRating = 0;

  void updateRating(int rating) {
    setState(() {
      selectedRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.height;
    TextEditingController descriptionController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.close,
            color: black,
          ),
        ),
        title: const Text("Write Reviews", style: TextStyle(color: black),),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Tell Us to Improve",
                style: TextStyle(
                  color: black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            const Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur",
                style: TextStyle(color: black, fontSize: 16),
              ),
            ),
            const Center(
              child: Text(
                "adipiscing elit, sed do eiusmod tempor ",
                style: TextStyle(color: black, fontSize: 16),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(
              selectedRating.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 1; i <= 5; i++)
                  GestureDetector(
                    onTap: () => updateRating(i),
                    child: Icon(
                      Icons.star,
                      color: i <= selectedRating ? Colors.orange : Colors.grey,
                    ),
                  ),
                SizedBox(height: screenHeight*0.07,),
                const Text("Let us know what you think"),
                Card(
                  elevation: 3,
                  child: TextField(

                    controller: descriptionController,
                    decoration: InputDecoration(
                      hintText: "Write your review here",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.orange)),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: screenHeight * 0.12),
                    )
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: screenWidth * 0.87,
                  height: screenWidth * 0.19,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.push(
                      // context,
                      // MaterialPageRoute(
                      // builder: (context) => const PersonalInfo()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: bgcolor,
                      side: const BorderSide(color: black, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Center(
                      child: Text(
                        "DONE",
                        style: TextStyle(
                            fontSize: 16,
                            color:  Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}