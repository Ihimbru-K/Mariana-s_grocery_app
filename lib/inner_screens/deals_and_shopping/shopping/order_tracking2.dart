import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../widgets/root_screen.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key}) : super(key: key);

  @override
  State<OrderTracking> createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  double _value1 = 0.0;
  double _value2 = 0.5;
  double _value3 = 1.0;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Order Tracking",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/bike.png"),
            SliderTheme(
              data: SliderThemeData(
                thumbColor: Colors.orange,
                activeTrackColor: Colors.orange,
                inactiveTrackColor: Colors.grey,
                overlayColor: Colors.orange.withOpacity(0.2),
              ),
              child: Column(
                children: [
                  _buildSliderRow('Step 1', 'Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod', _value1, 1),
                  _buildSliderRow('Step 2', 'Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod', _value2, 2),
                  _buildSliderRow('Step 3', 'Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod', _value3, 3),

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
                          "Submit Review",
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
            ),


          ],
        ),
      ),
      bottomNavigationBar: RootScreen(),
    );
  }

  Widget _buildSliderRow(String title, String description, double value, int nodeIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Slider(
            value: value,
            onChanged: (newValue) {
              // No need for setState since the value is not being used to update the state
            },
            min: 0.0,
            max: 1.0,
            divisions: 10,
            label: title,
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Node $nodeIndex - $title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}