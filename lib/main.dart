import 'package:flutter/material.dart';
import 'package:grocery_app/on_boarding/01_onboarding_0.dart';



import 'inner_screens/home/06_home.dart';
import 'models/fruits_class.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Grocery Store app',
      theme: ThemeData(


       // primarySwatch: Colors.orange,
      ),


     home: FruitSelectionScreen(),
     // home: const Onboarding0()
      //home: Rev(),
      //home: SignIn(),
    );
  }
}

