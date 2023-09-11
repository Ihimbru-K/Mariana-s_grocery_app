import 'package:flutter/material.dart';

import '../../../constants/colors.dart';


class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key}) : super(key: key);

  @override
  State<OrderTracking> createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.close,
            color: black,
          ),
        ),
        title: const Text("Order Tracking", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,

      ),

      body: Container(child: Column(children: [



      ],),),
    );
  }
}
