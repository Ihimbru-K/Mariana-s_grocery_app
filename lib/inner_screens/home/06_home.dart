import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const String name = "Rafatul Islam";
    return Scaffold(
      appBar: AppBar(

        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ Column(children: const [
            Text("Good morning", style: TextStyle(fontSize: 13, color: dgrey),), SizedBox(height: 3,), Text("$name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ],),
              Icon(Icons.notification_add_rounded)
              
        ],)],
      ),
      body: Container(child: Column(
        children: [Text("This is ")],
      ),),
    );
  }
}
