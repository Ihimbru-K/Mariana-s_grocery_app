import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSliderRow(String title, String description, double value, int nodeIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Slider(
            value: value,
            onChanged: (newValue) {
              // No need for setState since the value is not being used to update the state
            },
            min: 0.0,
            max: 1.0,
            divisions: 10,
            label: title,
            vertical: true,
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